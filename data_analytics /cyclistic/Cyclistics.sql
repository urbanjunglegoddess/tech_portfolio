-- Create the Cyclistic database
CREATE DATABASE Cyclistic;

-- Truncate all the data from the database
Truncate TABLE divvy_trips;

-- Create the divvy_trips table
--MySql--
-- Create the divvy_trips table
CREATE TABLE divvy_trips
(
    ride_id            VARCHAR(200),
    rideable_type      VARCHAR(50),
    started_at         DATETIME,
    ended_at           DATETIME,
    start_station_name VARCHAR(200),
    start_station_id   VARCHAR(50),
    end_station_name   VARCHAR(200),
    end_station_id     VARCHAR(50),
    start_lat          DOUBLE(10, 8),
    start_lng          DOUBLE(11, 8),
    end_lat            DOUBLE(10, 8),
    end_lng            DOUBLE(11, 8),
    member_casual      VARCHAR(20)
);

-- Create divvy_stations table
CREATE TABLE divvy_stations
(
    id          INT,
    name        VARCHAR(200),
    city        VARCHAR(50)
        latitude NUMERIC,
    longitude   NUMERIC,
    dpcapacity  integer,
    online_date timestamp,
    lat_long    POINT
);
-- Cleaning data;

-- Add columns to the divvy_trips table 


ALTER TABLE divvy_trips
    ADD COLUMN ride_length      TIME,
    ADD COLUMN day_of_the_week  VARCHAR(20),
    ADD COLUMN ride_time_of_day VARCHAR(20),
    ADD COLUMN season           VARCHAR(20);

-- Need to update for the season the ride was in
--MySQL--
SELECT *,
       CASE
           WHEN MONTH(started_at) IN (12, 1, 2) THEN 'Winter'
           WHEN MONTH(started_at) IN (3, 4, 5) THEN 'Spring'
           WHEN MONTH(started_at) IN (6, 7, 8) THEN 'Summer'
           WHEN MONTH(started_at) IN (9, 10, 11) THEN 'Fall'
           ELSE 'Unknown'
           END AS season
FROM divvy_trips;

--PostgeSQL--
UPDATE divvy_trips
SET season =
        CASE
            WHEN EXTRACT(MONTH FROM started_at) IN (12, 1, 2) THEN 'Winter'
            WHEN EXTRACT(MONTH FROM started_at) IN (3, 4, 5) THEN 'Spring'
            WHEN EXTRACT(MONTH FROM started_at) IN (6, 7, 8) THEN 'Summer'
            WHEN EXTRACT(MONTH FROM started_at) IN (9, 10, 11) THEN 'Fall'
            END;


-- Extract day_of_the_week from start_date
UPDATE
    divvy_trips
SET day_of_the_week = DAYNAME(started_at);
-- Establish morning, afternoon, and night of the day
UPDATE
    divvy_trips
SET ride_time_of_day =
        CASE
            WHEN HOUR(started_at) >= 6
                AND HOUR(started_at) < 12 THEN 'Morning'
            WHEN HOUR(started_at) >= 12
                AND HOUR(started_at) < 18 THEN 'Afternoon'
            WHEN HOUR(started_at) >= 18
                OR HOUR(started_at) < 6 THEN 'Night'
            ELSE 'Unknown'
            END;
-- Update the columns to the correct data types;ALTER TABLE divvy_trips MODIFY COLUMN started_at TIMESTAMP;

ALTER TABLE divvy_trips
    MODIFY COLUMN ended_at TIMESTAMP;

ALTER TABLE divvy_trips RENAME COLUMN member_casual TO membership;

UPDATE
    divvy_trips
SET ride_length = TIMESTAMPDIFF(
        MINUTE,
        started_at,
        ended_at
                  );
-- Deleting columns
ALTER TABLE divvy_station
    DROP COLUMN online_date;

ALTER TABLE Cyclistic.divvy_stations
    DROP COLUMN city;

ALTER TABLE Cyclistic.divvy_stations
    DROP COLUMN dpcapacity;

-- Add the Spatial columns with the geometry points 
ALTER TABLE divvy_trips
    ADD COLUMN start_location POINT;

ALTER TABLE divvy_trips
    ADD COLUMN end_location POINT;

ALTER TABLE divvy_stations
    ADD COLUMN geo_point POINT;

UPDATE
    divvy_trips
SET start_location = POINT(
        start_lng,
        start_lat
                     );

UPDATE
    divvy_trips
SET end_location = POINT(
        end_lng,
        end_lat
                   );

UPDATE
    divvy_stations
SET geo_point = POINT(
        longitude,
        latitude
                );
-- View all the data in the database 
SELECT *
FROM divvy_trips dt;
-- Find how many records there are all together
SELECT COUNT(*)
FROM divvy_trips dt;

-- Explore the structure of the divvy_trips table
DESCRIBE divvy_trips;

-- Find if there are date outside of 2020 and 2023 

SELECT started_at
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023

-- Delete those records from the table

DELETE
FROM divvy_trips
WHERE (
          YEAR(started_at) != 2020
              AND (
              YEAR(started_at) != 2023);
 -- Find the earliest_date in the database
SELECT MIN(started_at) AS earliest_date
FROM divvy_trips dt;
-- Check if there is null values in the table
SELECT COUNT(*)
FROM divvy_trips dt
WHERE ride_id IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE rideable_type IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE started_at IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE ended_at IS NULL;
-- There are 1770447 records that are null
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_station_name IS NULL;
-- There are 7695636
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_station_id IS NULL;
-- There are 1904438
SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_station_name IS NULL;
-- There are 7778136
SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_station_id IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_lat IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_lng IS NULL;
-- There are 15,744
SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_lat IS NULL;
-- There are 15744
SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_lng IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE membership IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE season IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE day_of_the_week IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_location IS NULL;
-- There are 15744
SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_location IS NULL;
SELECT COUNT(*)
FROM divvy_trips dt
WHERE ride_length IS NULL;
-- Check if there is null values in the table
SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_station_name IS NULL
   OR start_station_id IS NULL
   OR start_lat IS NULL
   OR start_lng IS NULL
   OR end_station_name IS NULL
   OR end_station_id IS NULL
   OR end_lat IS NULL
   OR end_lng IS NULL;
-- Find all the duplicates based off of ride_id and same day 
SELECT ride_id,
       DATE(started_at) AS ride_date,
       COUNT(*)         AS duplicate_count
FROM divvy_trips
GROUP BY ride_id,
         DATE(started_at)
HAVING COUNT(*) > 1;
-- Find all the stations information ;
-- View all the individual start station names
SELECT DISTINCT (start_station_name),
                start_station_id,
                start_lat,
                start_lng
FROM divvy_trips dt;
-- View all the start latitudes and start longitudes with no station names 
SELECT start_station_name,
       start_station_id,
       start_lat,
       start_lng,
       ride_id
FROM divvy_trips dt
WHERE start_station_name IS NULL;
-- View all the individual end station names 
SELECT DISTINCT (end_station_name),
                end_station_id,
                end_lat,
                end_lng
FROM divvy_trips dt;
-- How many times is this particular station mentioned in the divvy_trips table
SELECT station_name,
       station_id,
       station_lat,
       station_lng,
       COUNT(*) AS mention_count
FROM (SELECT start_station_name AS station_name,
             start_station_id   AS station_id,
             start_lat          AS station_lat,
             start_lng          AS station_lng
      FROM divvy_trips
      UNION ALL
      SELECT end_station_name AS station_name,
             end_station_id   AS station_id,
             end_lat          AS station_lat,
             end_lng          AS station_lng
      FROM divvy_trips) AS all_stations
GROUP BY station_name,
         station_id,
         station_lat,
         station_lng;
-- Create a table with all the stations with their ids, latitudes, longitudes, and geo_points 
CREATE TABLE all_stations AS
SELECT start_station_id   AS id,
       start_station_name AS name,
       start_lat          AS latitude,
       start_lng          AS longitude,
       start_location     AS geo_point
FROM divvy_trips dt
UNION
SELECT end_station_id,
       end_station_name,
       end_lat,
       end_lng,
       end_location
FROM divvy_trips dt;
SELECT COUNT(DISTINCT geo_point)
FROM all_stations;
-- Compare the divvy_stations table to the all_stations table
SELECT *
FROM divvy_stations
WHERE (
       id,
       name,
       latitude,
       longitude
          ) NOT IN (SELECT id,
                           name,
                           latitude,
                           longitude
                    FROM all_stations);
-- View where all stations name and id match up to divy stations start station name and start station id through the longitude and latitude 
SELECT DISTINCT as2.name,
                as2.id,
                dt.start_station_name AS divvy_trips_name,
                dt.start_station_id
FROM all_stations as2
         INNER JOIN divvy_trips dt ON
    dt.start_lat = as2.latitude
        AND dt.start_lng = as2.longitude
WHERE as2.name IS NULL;
-- View where divvy stations names and ids match up with divvy_trips start station name through the longitude and latitude
SELECT ds.name,
       ds.id,
       dt.start_station_name,
       dt.start_station_id,
       ds.latitude,
       ds.longitude
FROM divvy_stations ds
         INNER JOIN divvy_trips dt ON
    ds.latitude = dt.start_lat
        AND ds.longitude = dt.start_lng
WHERE start_station_name IS NULL;
-- View were divvy stations names and ids match up with divvy trips end station name through the longitude and latitude 
SELECT ds.name,
       ds.id,
       dt.end_station_name,
       dt.end_station_id,
       ds.latitude,
       ds.longitude
FROM divvy_stations ds
         INNER JOIN divvy_trips dt ON
    ds.latitude = dt.end_lat
        AND ds.longitude = dt.end_lng
WHERE dt.end_station_name IS NULL;
-- Update divvy trips start station names and ids with divvy stations with all stations names ans ids 
UPDATE
    divvy_trips dt
        JOIN divvy_stations ds ON
        dt.start_lat = ds.latitude
            AND dt.start_lng = ds.longitude
SET dt.start_station_name = ds.name
WHERE start_station_name IS NULL;
-- Update divvy trips start station names and ids with all stations with all stations names ans ids 
UPDATE
    divvy_trips dt
        JOIN all_stations as2 ON
        dt.start_station_id = as2.id
SET dt.start_station_name = as2.name,
    dt.start_station_id   = as2.id;
WHERE
start_station_name IS NULL;
-- Update all stations names and ids with divvy trips start station names and start station ids where all stations name is null 
UPDATE
    all_stations AS a
        INNER JOIN divvy_trips AS d ON
        a.id = d.start_station_id
SET a.name = d.start_station_name,
    a.id   = d.start_station_id
WHERE a.name IS NULL;
-- Use the latitude and longitude points to find that missing station names 
UPDATE
    all_stations
SET name = (SELECT name
            FROM all_stations AS s
            WHERE s.latitude = all_stations.latitude
              AND s.longitude = all_stations.longitude
              AND name IS NOT NULL
            LIMIT 1)
WHERE name IS NULL;
-- Find if anything is still null
SELECT *
FROM all_stations as2
WHERE id IS NULL;
-- View the records that do not have geo points for either the start station or the end station
SELECT *
FROM divvy_trips dt
WHERE start_location IS NULL
   OR end_location IS NULL;
-- Find the station names that are duplicated and have the same latitude and longtitude 
SELECT name,
       latitude,
       longitude
FROM all_stations
GROUP BY name,
         latitude,
         longitude
HAVING COUNT(*) > 1;
-- Find any duplicates 
SELECT id,
       COUNT(*) AS count
FROM all_stations as2
GROUP BY id
HAVING COUNT(*) > 1;
SELECT ride_id,
       COUNT(*) AS count
FROM divvy_trips dt
GROUP BY ride_id
HAVING COUNT(*) > 1;
SELECT id,
       COUNT(*) AS count
FROM divvy_stations ds
GROUP BY id
HAVING COUNT(*) > 1;
-- Find records with ride lengths less than 0
SELECT *
FROM divvy_trips_v2
WHERE ride_length < 0;
-- Drop records with ride lengths less than 0
DELETE
FROM divvy_trips
WHERE ride_length < 0;
-- Analyze data ;
-- Member Summary;
SELECT membership,
       AVG(ride_length) AS average_ride_length,
       COUNT(*)         AS total_rides,
       MIN(ride_length) AS min_ride_length,
       MAX(ride_length) AS max_ride_length
FROM divvy_trips dt
GROUP BY membership;
-- Filter data for a specific member type
SELECT membership,
       COUNT(*)
FROM divvy_trips
GROUP BY membership;
-- Calculate the total number of rides by casual members and annual members for 2020 to 2023
SELECT membership,
       COUNT(*) AS total_rides,
       YEAR(started_at)
FROM divvy_trips
WHERE YEAR(started_at) >= 2020
  AND YEAR(started_at) <= 2023
GROUP BY membership,
         YEAR(started_at);
-- Compare the total number of rides between casual members and annual members from 2020 to 2023
SELECT CASE
           WHEN COUNT(*) > (SELECT COUNT(*)
                            FROM divvy_trips
                            WHERE membership = 'memebr'
                              AND YEAR(started_at) >= 2020
                              AND YEAR(started_at) <= 2023) THEN 'Casual members rode the most.'
           WHEN COUNT(*) < (SELECT COUNT(*)
                            FROM divvy_trips
                            WHERE membership = 'casual'
                              AND YEAR(started_at) >= 2020
                              AND YEAR(started_at) <= 2023) THEN 'Annual members rode the most.'
           ELSE 'Casual and annual members rode an equal number of times.'
           END AS RESULT
FROM divvy_trips
WHERE membership = 'Casual'
  AND YEAR(started_at) >= 2020
  AND YEAR(started_at) <= 2023;
-- Calculate the number of members in specific seasons from 2020 to 2023
SELECT membership,
       season,
       COUNT(DISTINCT ride_id) AS total_members,
       YEAR(started_at),
       AVG(ride_length)        AS average_ride_length
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
GROUP BY membership,
         season,
         YEAR(started_at)
ORDER BY YEAR(started_at);
-- Calculate the number of different members in specific seasons from 2020 to 2023
SELECT season,
       COUNT(DISTINCT membership) AS total_members,
       AVG(ride_length)           AS average_ride_length
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
GROUP BY season;
-- Calculate the average ride length by member type
SELECT membership,
       AVG(ride_length) AS average_ride_length
FROM divvy_trips
GROUP BY membership;
-- Calculate the average ride length for casual riders
SELECT AVG(ride_length) AS avg_ride_length_casual
FROM divvy_trips
WHERE membership = 'casual';
-- Calculate the average ride length for annual members
SELECT AVG(ride_length) AS avg_ride_length_annual
FROM divvy_trips
WHERE membership = 'annual';
-- Ride_length summary ;
SELECT MIN(ride_length) AS min_ride_length,
       MAX(ride_length) AS max_ride_length,
       AVG(ride_length) AS avg_ride_length,
       COUNT(*)         AS total_rides
FROM divvy_trips;
-- Year summary ;
-- Summary of the year 2020
SELECT COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2020;
-- Summary of the year 2021
SELECT COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2021;
-- Summary of the year 2022
SELECT COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2022;
-- Summary of the year 2023
SELECT COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2023;
-- Season summary ;
-- Summary of the seasons in the year 2020
SELECT season,
       COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2020
GROUP BY season;
-- Summary of the seasons in the year 2021
SELECT season,
       COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2021
GROUP BY season;
-- Summary of the seasons in the year 2022
SELECT season,
       COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2022
GROUP BY season;
-- Summary of the seasons in the year 2023
SELECT season,
       COUNT(*)         AS total_rides,
       AVG(ride_length) AS average_duration
FROM divvy_trips
WHERE YEAR(started_at) = 2023
GROUP BY season;
-- Calculate the number of rides by season
SELECT season,
       YEAR(started_at),
       COUNT(*) AS total_rides
FROM divvy_trips
GROUP BY season,
         YEAR(started_at);
-- Calculate the total ride time by member type and season
SELECT membership,
       season,
       SUM(ride_length) AS total_ride_time
FROM divvy_trips
GROUP BY membership,
         season;
-- Time of day summary;
-- Count the number of rides for each time of day
SELECT ride_time_of_day,
       COUNT(*) AS total_rides
FROM divvy_trips
GROUP BY ride_time_of_day;
-- Calculate the average ride duration for each time of day (Morning, Afternoon, Night)
SELECT ride_time_of_day,
       AVG(ride_length) AS average_duration
FROM divvy_trips
GROUP BY ride_time_of_day;
-- Calculate the number of rides for each time of day during each year (Morning, Afternoon, Night)
SELECT ride_time_of_day,
       YEAR(started_at),
       COUNT(*) AS total_rides
FROM divvy_trips
GROUP BY ride_time_of_day,
         YEAR(started_at);
-- Calculate the number of rides for each time of day during each season (Morning, Afternoon, Night)
SELECT ride_time_of_day,
       season,
       COUNT(*) AS total_rides,
       YEAR(started_at)
FROM divvy_trips
GROUP BY ride_time_of_day,
         season,
         YEAR(started_at);
-- Day of the week summary;
-- Calculate the average ride length by day of the week
SELECT DAYNAME(started_at) AS day_of_the_week,
       AVG(ride_length)    AS average_ride_length
FROM divvy_trips
GROUP BY day_of_the_week;
-- Find the busiest day of the year
SELECT DATE(started_at) AS DAY,
       COUNT(*)         AS total_trips
FROM divvy_trips
GROUP BY DATE(started_at)
ORDER BY total_trips DESC
LIMIT 1;
-- Find the least busiest day of the year
SELECT DATE(started_at) AS DAY,
       COUNT(*)         AS total_trips
FROM divvy_trips
GROUP BY DATE(started_at)
ORDER BY total_trips ASC
LIMIT 1;
-- Find the busiest 10 days between the years 2020 and 2023
SELECT DATE(started_at) AS DAY,
       COUNT(*)         AS total_trips
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
GROUP BY DATE(started_at)
ORDER BY total_trips DESC
LIMIT 10;

-- Find the least 10 busiest day between the years 2020 and 2023
SELECT DATE(started_at) AS DAY,
       COUNT(*)         AS total_trips
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
GROUP BY DATE(started_at)
ORDER BY total_trips ASC
LIMIT 10;
-- Calculate the number of rides during the week by the day of the ride by different members from 2020 2023
SELECT day_of_the_week,
       membership,
       YEAR(started_at),
       count(*) AS total_rides,
       AVG(ride_length)
FROM divvy_trips dt
GROUP BY day_of_the_week,
         membership,
         YEAR(started_at)
ORDER BY day_of_the_week,
         YEAR(started_at);
-- Rideable_type summary;
-- Count the number of rides for each rideable type
SELECT rideable_type,
       COUNT(*) AS total_rides
FROM divvy_trips
GROUP BY rideable_type;
-- Find how many bike types were ridden in each year
SELECT rideable_type,
       COUNT(*) AS bike_type_count,
       YEAR(started_at)
FROM divvy_trips
GROUP BY rideable_type,
         YEAR(started_at);
-- Find what types of bikes were driven by what members in what years
SELECT rideable_type,
       YEAR(started_at),
       membership,
       COUNT(*) AS membership_count
FROM divvy_trips
GROUP BY rideable_type,
         YEAR(started_at),
         membership;
-- Calculate average ride duration for each rideable type
SELECT rideable_type,
       AVG(ride_length) AS avg_duration
FROM divvy_trips
GROUP BY rideable_type;
-- View the distance between the start location and the end location
SELECT ST_DISTANCE(
               start_location,
               end_location
       ) AS distance
FROM divvy_trips;
-- Station Summary;
-- Find the name of the most popular stations between 2020 and 2023
SELECT start_station_name,
       COUNT(*) AS total_rides
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
  AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY total_rides DESC
LIMIT 10;

-- Find the name of the least popular stations between 2020 and 2023
SELECT start_station_name,
       COUNT(*) AS total_rides
FROM divvy_trips
WHERE YEAR(started_at) BETWEEN 2020 AND 2023
  AND start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY total_rides ASC
LIMIT 10;
-- Find the name of the most popular stations between 2020
SELECT start_station_name
FROM (SELECT start_station_name,
             COUNT(*) AS total_rides
      FROM divvy_trips
      WHERE YEAR(started_at) = 2020
      GROUP BY start_station_name
      ORDER BY total_rides DESC
      LIMIT 1) AS popular_stations_2020;
-- Find the name of the most popular station in 2021
SELECT start_station_name
FROM (SELECT start_station_name,
             COUNT(*) AS total_rides
      FROM divvy_trips
      WHERE YEAR(started_at) = 2021
      GROUP BY start_station_name
      ORDER BY total_rides DESC
      LIMIT 1) AS popular_stations_2021;
-- Find the name of the most popular station in 2022
SELECT start_station_name
FROM (SELECT start_station_name,
             COUNT(*) AS total_rides
      FROM divvy_trips
      WHERE YEAR(started_at) = 2022
      GROUP BY start_station_name
      ORDER BY total_rides DESC
      LIMIT 1) AS popular_stations_2022;
-- Find the name of the most popular station in 2023
SELECT start_station_name
FROM (SELECT start_station_name,
             COUNT(*) AS total_rides
      FROM divvy_trips
      WHERE YEAR(started_at) = 2023
      GROUP BY start_station_name
      ORDER BY total_rides DESC
      LIMIT 1) AS popular_stations_2023;