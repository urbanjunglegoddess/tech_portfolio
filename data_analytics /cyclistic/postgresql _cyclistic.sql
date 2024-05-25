--Create the cyclistic database
CREATE DATABASE Cyclistic;

--Create the divvy_trips table
CREATE TABLE divvy_trips (
   ride_id            VARCHAR(200),
    rideable_type      VARCHAR(50),
    started_at         TIMESTAMP,
    ended_at           TIMESTAMP,
    start_station_name VARCHAR(200),
    start_station_id   VARCHAR(50),
    end_station_name   VARCHAR(200),
    end_station_id     VARCHAR(50),
    start_lat          NUMERIC,
    start_lng          NUMERIC,
    end_lat            NUMERIC,
    end_lng            NUMERIC,
    member_casual      VARCHAR(20),
    ride_length        TIME,
    season             VARCHAR(20),
    start_location     POINT,
    end_location       POINT,
    end_day            VARCHAR,
    start_day          VARCHAR,
    start_ride_tod     VARCHAR,
    end_ride_tod       VARCHAR,
    week          INTEGER
);

--Create a table with all the stations with their ids, latitudes, longitudes, and geo_points
CREATE TABLE all_stations (
    id varchar (20),
    name varchar(200),
    latitude numeric,
    longitude numeric,
    geo_point POINT
);

--=====================================================================================
--Update the divvy_trips table

-- Update ride_length
UPDATE cyclistic.divvy_trips
SET ride_length = ended_at - started_at;

-- Update season
UPDATE cyclistic.divvy_trips
SET season =
    CASE
        WHEN EXTRACT(MONTH FROM started_at) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM started_at) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(MONTH FROM started_at) IN (9, 10, 11) THEN 'Fall'
        ELSE 'Winter'
    END;

-- Update start_location and end_location
UPDATE cyclistic.divvy_trips
SET start_location = POINT(start_lng, start_lat),
    end_location = POINT(end_lng, end_lat);

-- Update end_day and start_day
UPDATE cyclistic.divvy_trips
SET end_day = TO_CHAR(ended_at, 'Day'),
    start_day = TO_CHAR(started_at, 'Day');

-- Update start_ride_tod and end_ride_tod
UPDATE cyclistic.divvy_trips
SET start_ride_tod =
        CASE
            WHEN EXTRACT(HOUR FROM started_at) BETWEEN 1 AND 4 THEN 'Early Morning'
            WHEN EXTRACT(HOUR FROM started_at) BETWEEN 5 AND 11 THEN 'Morning'
            WHEN EXTRACT(HOUR FROM started_at) BETWEEN 12 AND 17 THEN 'Afternoon'
            WHEN EXTRACT(HOUR FROM started_at) BETWEEN 18 AND 23 THEN 'Night'
            ELSE 'Midnight'
            END,
    end_ride_tod   =
        CASE
            WHEN EXTRACT(HOUR FROM ended_at) BETWEEN 1 AND 4 THEN 'Early Morning'
            WHEN EXTRACT(HOUR FROM ended_at) BETWEEN 5 AND 11 THEN 'Morning'
            WHEN EXTRACT(HOUR FROM ended_at) BETWEEN 12 AND 17 THEN 'Afternoon'
            WHEN EXTRACT(HOUR FROM ended_at) BETWEEN 18 AND 23 THEN 'Night'
            ELSE 'Midnight'
            END;

--Find the week of the year for each ride and update the week column
UPDATE cyclistic.divvy_trips
SET week = EXTRACT(WEEK FROM started_at);

--=====================================================================================
--Insert the data in all_stations table and fix missing station information

-- Insert stations data into all_stations table
INSERT INTO all_stations
SELECT DISTINCT start_station_id, start_station_name, start_lat, start_lng
FROM divvy_trips;

INSERT INTO all_stations
SELECT DISTINCT end_station_id, end_station_name, end_lat, end_lng
FROM divvy_trips;

--Compare the geopoints of all the stations and see if they any that are the same to fill in the missing values
SELECT count(*)
FROM all_stations
WHERE id IS NULL OR name IS NULL;

SELECT id, name, latitude, longitude, COUNT(*)
FROM all_stations
WHERE id IS NULL OR name IS NULL
GROUP BY id, name, latitude, longitude;

SELECT id, count(*)
FROM all_stations
GROUP BY id
ORDER BY count(*) DESC;

SELECT name, count(*)
FROM all_stations
GROUP BY name;

-- Create a temporary table to store the duplicate stations
CREATE TEMP TABLE duplicate_stations AS
SELECT id, name, latitude, longitude, geo_point
FROM all_stations;

-- Show all the records in the duplicate_stations table
SELECT *
FROM duplicate_stations;

--=====================================================================================

-- Find all the records where the name is null by each column in all_stations
SELECT count(*)
FROM duplicate_stations
WHERE id IS NULL;
-- 3796

SELECT count(*)
FROM duplicate_stations
WHERE name IS NULL;
--3775

Select count(*)
FROM duplicate_stations
WHERE latitude IS NULL;
--7

Select count(*)
FROM duplicate_stations
WHERE longitude IS NULL;
--7

Select count(*)
FROM duplicate_stations
WHERE geo_point IS NULL;
--7

-- Show the records of the names and the distinct geo points where the geo points are not null
SELECT count(*)
FROM duplicate_stations
WHERE geo_point IS NOT NULL;

-- Fill in the missing values in the station names based on the matching geo points
UPDATE duplicate_stations
SET name = (SELECT name
            FROM duplicate_stations
            WHERE ds.latitude = latitude AND ds.longitude = longitude AND name IS NOT NULL
            LIMIT 1)
FROM duplicate_stations ds
WHERE duplicate_stations.name IS NULL
AND duplicate_stations.geo_point IS NOT NULL;

--=====================================================================================

-- Delete the duplicate stations from the all_stations table
DELETE FROM all_stations
WHERE id IN (SELECT id
             FROM all_stations
             GROUP BY id
             HAVING COUNT(*) > 1);

--Update all_stations geo_point column
UPDATE all_stations
SET geo_point = POINT(longitude, latitude);

--=====================================================================================

-- Add a primary key constraint for the divvy_trips table
ALTER TABLE divvy_trips
    ADD CONSTRAINT pk_ride_id
        PRIMARY KEY (ride_id);

-- Add a primary key constraint for the all_stations table
ALTER TABLE all_stations
    ADD CONSTRAINT pk_station_id
        PRIMARY KEY (id);

-- Add a foreign key constraint for start_station_id
ALTER TABLE divvy_trips
    ADD CONSTRAINT fk_start_station_id
        FOREIGN KEY (id) REFERENCES divvy_trips (start_station_id);

-- Add a foreign key constraint for end_station_id
ALTER TABLE divvy_trips
    ADD CONSTRAINT fk_end_station_id
        FOREIGN KEY (id) REFERENCES divvy_trips (end_station_id);

--=====================================================================================
-- Describe the divvy_trips table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'divvy_trips';

-- Describe the all_stations table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'all_stations';

--=====================================================================================

-- Find how many records there are all together
SELECT COUNT(*)
FROM divvy_trips dt;

--Find any duplicates based on the ride_id
SELECT ride_id, COUNT(*)
FROM divvy_trips dt
GROUP BY ride_id
HAVING COUNT(*) > 1;

-- Find the number of unique rideable types
SELECT rideable_type ,COUNT(DISTINCT rideable_type) AS unique_rideable_types
FROM divvy_trips dt
Group BY rideable_type;

-- Find the earliest_date in the database
SELECT MIN(started_at) AS earliest_date
FROM divvy_trips dt;

-- Find the last date of the data
SELECT MAX(started_at) AS latest_date
FROM divvy_trips dt;

-- Find if there are date outside of 2020 and 2023
SELECT started_at
FROM divvy_trips
WHERE not (extract(year from "started_at") >= 2020 and extract(year from "started_at") <= 2023);

--=====================================================================================

-- Check for all  missing values in the data
SELECT COUNT(*) AS missing_values
FROM divvy_trips dt
WHERE started_at IS NULL
OR ended_at IS NULL
OR start_station_name IS NULL
OR end_station_name IS NULL
OR start_station_id IS NULL
OR end_station_id IS NULL
OR start_lat IS NULL
OR start_lng IS NULL
OR end_lat IS NULL
OR end_lng IS NULL
OR member_casual IS NULL;

-- Check for all missing values in the stations data
SELECT COUNT(*) AS missing_values
FROM all_stations alls
WHERE id IS NULL
OR name IS NULL
OR latitude IS NULL
OR longitude IS NULL;

-- Check for all missing values in the stations data in divvy_trips table
SELECT COUNT(start_station_name) AS null_station_names, COUNT(start_station_id) AS null_station_ids , count(start_lat) AS null_start_lats, count(start_lng) AS null_start_lngs
FROM divvy_trips dt
WHERE start_station_name IS NULL
   OR start_station_id IS NULL
   OR start_lat IS NULL
   OR start_lng IS NULL;

SELECT count(end_station_name) AS null_station_names, count(end_station_id) AS null_station_ids, count(end_lat) AS null_end_lats, count(end_lng) AS null_end_lngs
FROM divvy_trips dt
WHERE end_station_name IS NULL
   OR end_station_id IS NULL
   OR end_lat IS NULL
   OR end_lng IS NULL;

-- Find the individual columns with missing values
SELECT COUNT(*)
FROM divvy_trips dt
WHERE ride_id IS NULL;
--There are 0 null values in ride_id

SELECT COUNT(*)
FROM divvy_trips dt
WHERE rideable_type IS NULL;
--There are 0 null values in rideable_type

SELECT COUNT(*)
FROM divvy_trips dt
WHERE started_at IS NULL;
--There are 0 null values in started_at

SELECT COUNT(*)
FROM divvy_trips dt
WHERE ended_at IS NULL;
--There are 0 null values in ended_at

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_station_name IS NULL;
--There are 2,494,245 null values in start_station_name

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_station_id IS NULL;
--There are 2,495,000 null values in start_station_id

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_station_name IS NULL;
--There are 2,671,994 null values in  end_station_name

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_station_id IS NULL;
--There are 2,672,596 null values in  end_station_name

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_lat IS NULL;
--There are 0 null values in start_lat

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_lng IS NULL;
--There are 0 null values in start_lng

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_lat IS NULL;
--There are 21,873 null values in end_lat

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_lng IS NULL;
--There are 21,873 null values in end_lng

SELECT COUNT(*)
FROM divvy_trips dt
WHERE membership IS NULL;
--There are 0 null values in membership

SELECT COUNT(*)
FROM divvy_trips dt
WHERE season IS NULL;
--There are 0 null values in season

SELECT COUNT(*)
FROM DIVVY_TRIPS DT
WHERE ride_length IS NULL;
--There are 0 null values in ride_length

SELECT COUNT(*)
FROM divvy_trips dt
WHERE START_LOCATION IS NULL;
--There are 0 null values in start_location

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_location IS NULL;
--There are 21,873 null values in end_location

SELECT COUNT(*)
FROM divvy_trips dt
WHERE end_day IS NULL;
--There are 0 null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_day IS NULL;
--There are 0 null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE START_RIDE_TOD IS NULL;
--There are 0 null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE END_RIDE_TOD IS NULL;
--There are 0 null values in

--=====================================================================================

-- #Count the null values in  a column
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual IS NULL;


-- #Check and correct the spelling of the membership values
SELECT member_casual, COUNT(*)
FROM divvy_trips
GROUP BY member_casual;

-- #Correct the spelling of the membership values
UPDATE divvy_trips
SET member_casual = 'casual'
WHERE member_casual = 'Casual';

UPDATE divvy_trips
SET member_casual = 'member'
WHERE member_casual = 'Member';

--=====================================================================================


-- #Find the ride lengths that are not a positive number and less than 0 in divvy_trips, and You might need to add explicit type casts.
SELECT *
FROM divvy_trips
WHERE EXTRACT(EPOCH FROM ride_length) < 0;

-- #Find the ride_distance that the rider has traveled in the divvy_trips table
SELECT ride_id, start_station_name, end_station_name, start_location, end_location,
       ST_Distance(start_location, end_location) AS ride_distance
FROM divvy_trips;



--=====================================================================================
-- Summarize the data in the divvy_trips table by year, including the number of rides, the average ride length, minimum ride length, maximum ride length, and total ride length. You can use the EXTRACT() function to extract the year from the started_at column.
SELECT EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length)) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length)) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length)) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length)) AS total_ride_length
FROM divvy_trips
GROUP BY year;

-- Convert the ride_length to minutes and round it to the nearest minute with the ROUND() function
SELECT EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*) AS number_of_rides,
     Round(AVG(EXTRACT(EPOCH FROM ride_length) / 60)) AS average_ride_length,
       ROUND(MIN(EXTRACT(EPOCH FROM ride_length) / 60)) AS min_ride_length,
       ROUND(MAX(EXTRACT(EPOCH FROM ride_length) / 60)) AS max_ride_length,
       ROUND(SUM(EXTRACT(EPOCH FROM ride_length) / 60)) AS total_ride_length
FROM divvy_trips
GROUP BY year;




SELECT EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
GROUP BY year;

--=====================================================================================

-- #Summary of the year 2020
SELECT COUNT(*)
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2020;

-- #Summary of the year 2021
SELECT COUNT(*)
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2021;

-- #Summary of the year 2022
SELECT COUNT(*)
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2022;

-- #Summary of the year 2023
SELECT COUNT(*)
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2023;

-- #Summary of the months in 2020
SELECT EXTRACT(MONTH FROM started_at) AS month,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2020
GROUP BY month;

-- #Summary of the months in 2021
SELECT EXTRACT(MONTH FROM started_at) AS month,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2021
GROUP BY month;

-- #Summary of the months in 2022
SELECT EXTRACT(MONTH FROM started_at) AS month,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2022
GROUP BY month;

-- #Summary of the months in 2023
SELECT EXTRACT(MONTH FROM started_at) AS month,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2023
GROUP BY month;

-- #Summary of the seasons in 2020
SELECT season,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2020
GROUP BY season;

-- #Summary of the seasons in 2021
SELECT season,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2021
GROUP BY season;

-- #Summary of the seasons in 2022
SELECT season,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2022
GROUP BY season;

-- #Summary of the seasons in 2023
SELECT season,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) = 2023
GROUP BY season;

-- #Calculate the amount of annual member all together
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member';

-- #Calculate the amount of annual members in the year 2020
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
AND EXTRACT(YEAR FROM started_at) = 2020;

-- #Calculate the amount of annual members in the year 2021
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
AND EXTRACT(YEAR FROM started_at) = 2021;

-- #Calculate the amount of annual members in the year 2022
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
AND EXTRACT(YEAR FROM started_at) = 2022;

-- #Calculate the amount of annual members in the year 2023
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
AND EXTRACT(YEAR FROM started_at) = 2023;

-- #Calculate the amount of annual members in a specific season of the specific year
SELECT season,
       COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
GROUP BY season;

-- #Calculate the amount of annual member in the specific months in the specific year
SELECT EXTRACT(MONTH FROM started_at) AS month,EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*)
FROM divvy_trips
WHERE member_casual = 'member'
GROUP BY month, year
ORDER BY year, month;

-- #Calculate the amount of casual member all together
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual';

-- #Calculate the amount of casual members in the year 2020
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
AND EXTRACT(YEAR FROM started_at) = 2020;

-- #Calculate the amount of casual members in the year 2021
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
AND EXTRACT(YEAR FROM started_at) = 2021;

-- #Calculate the amount of casual members in the year 2022
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
AND EXTRACT(YEAR FROM started_at) = 2022;

-- #Calculate the amount of casual members in the year 2023
SELECT COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
AND EXTRACT(YEAR FROM started_at) = 2023;

-- #Calculate the amount of casual members in a specific season of the specific year
SELECT season,
       COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
GROUP BY season;

-- #Calculate the amount of casual member in the specific months in the specific year
SELECT EXTRACT(MONTH FROM started_at) AS month,EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*)
FROM divvy_trips
WHERE member_casual = 'casual'
GROUP BY month, year
ORDER BY year, month;

-- #Count the number of rides by member type
SELECT member_casual, COUNT(*)
FROM divvy_trips
GROUP BY member_casual;

-- #Calculate the percentage of ride taken by each type of member with the years 2020-2023
SELECT EXTRACT(YEAR FROM started_at) AS year,
       member_casual,
       COUNT(*) AS number_of_rides,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY EXTRACT(YEAR FROM started_at)), 2) AS percentage_of_rides
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) BETWEEN 2020 AND 2023
GROUP BY year, member_casual;

-- #Find the ride counts by member type and season
SELECT season,
       member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY season, member_casual;

-- #Average ride by member type
SELECT member_casual,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length
FROM divvy_trips
GROUP BY member_casual;

-- #Summary by member type
SELECT member_casual,
       COUNT(*) AS number_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length,
       MIN(EXTRACT(EPOCH FROM ride_length) / 60) AS min_ride_length,
       MAX(EXTRACT(EPOCH FROM ride_length) / 60) AS max_ride_length,
       SUM(EXTRACT(EPOCH FROM ride_length) / 60) AS total_ride_length
FROM divvy_trips
GROUP BY member_casual;

-- #Proportion of member types
SELECT member_casual,
       COUNT(*) AS number_of_rides,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS proportion_of_rides
FROM divvy_trips
GROUP BY member_casual;

-- #Proportion of member types by season
SELECT season,
       member_casual,
       COUNT(*) AS number_of_rides,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY season), 2) AS proportion_of_rides
FROM divvy_trips
GROUP BY season, member_casual;

-- #Calculate who rode the most between casual members and annual members between 2020 to 2023
SELECT EXTRACT(YEAR FROM started_at) AS year,
       member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) BETWEEN 2020 AND 2023
GROUP BY year, member_casual
ORDER BY year, number_of_rides DESC;

-- #Calculate the average ride length by member type and season
SELECT season,
       member_casual,
       AVG(EXTRACT(EPOCH FROM ride_length) / 60) AS average_ride_length
FROM divvy_trips
GROUP BY season, member_casual;

-- Where do casual members go on a regular basis
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY number_of_rides DESC;

-- Where do annual members go on a regular basis
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY number_of_rides DESC;

-- How many members are gained by the end of each year
SELECT EXTRACT(YEAR FROM started_at) AS year,
       COUNT(*) AS number_of_rides,
       SUM(COUNT(*)) OVER (ORDER BY EXTRACT(YEAR FROM started_at)) AS total_rides
FROM divvy_trips
WHERE EXTRACT(YEAR FROM started_at) BETWEEN 2020 AND 2023
GROUP BY year;

-- What times and days are most popular by both groups
SELECT start_ride_tod,
       start_day,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY start_ride_tod, start_day
ORDER BY number_of_rides DESC;

--  Where do most causal members start their rides
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY number_of_rides DESC;

-- Where do most annual members start their rides
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY number_of_rides DESC;

-- What is the longest ride?
SELECT ride_id,
       start_station_name,
       end_station_name,
       EXTRACT(EPOCH FROM ride_length) / 60 AS ride_length
FROM divvy_trips
ORDER BY ride_length DESC
LIMIT 1;

-- What is the shortest ride?
SELECT ride_id,
       start_station_name,
       end_station_name,
       EXTRACT(EPOCH FROM ride_length) / 60 AS ride_length
FROM divvy_trips
ORDER BY ride_length
LIMIT 1;

-- What group ride the most
SELECT member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY member_casual
ORDER BY number_of_rides DESC
LIMIT 1;

-- What group ride the least
SELECT member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY member_casual
ORDER BY number_of_rides
LIMIT 1;

-- how many more annual are there
SELECT member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY member_casual
ORDER BY number_of_rides DESC
LIMIT 1;

-- How many more annual members ride in a day vs casual members
SELECT start_day,
       member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY start_day, member_casual
ORDER BY number_of_rides DESC;

-- Who is riding everyday based on location and membership
SELECT start_station_name,
       member_casual,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY start_station_name, member_casual
ORDER BY number_of_rides DESC;

-- What is the busiest station
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY start_station_name
ORDER BY number_of_rides DESC
LIMIT 1;

-- What is the slowest station
SELECT start_station_name,
       COUNT(*) AS number_of_rides
FROM divvy_trips
GROUP BY start_station_name
ORDER BY number_of_rides
LIMIT 1;

-- What is the average ride length by month, day , hour, week, season, year using a helper function



-- What hour, day, week, month, season, year is more popular than others

-- What hour, day, week, month has the most rides during each season
-- What hour, day, week during each month gets the most rides
-- What hour, day, week during each season gets the most rides
-- What hour, day, week during each year gets the most rides
-- When do rides tend to slow down each month, season, year
-- What bike types are used the most
-- Figure out the info on the bike types
-- What bike type at what station is available
-- How many from each group use a specific bike type
-- What time of day is the busiest
-- How many rides are being taken each hour, day, week, month, season, year
-- At each station when is the first bike ride and by who
-- How far are people traveling on the bikes
-- What group of people are traveling for longer distances
-- Where are the most common start and end locations based on each group
-- Summarize every year
-- Summarize what every group does in each hour, day, week, month, season, year
-- What is the average ride length every hour, day, week, month, season, year
-- What is the average ride length every hour, day, week, month, season, year by each group
-- What is the mix and min ride length every hour, day, week, month, season, year
-- What is the mix and min ride length every hour, day, week, month, season, year by group
-- What hour, day, week, month, season, year are the most popular at each station
-- What is the mode ride length for each hour, day, week, month, season, year
-- What is the mode ride length for each hour, day, week, month, season, year by group
-- What is the most popular route

--=====================================================================================
SELECT *
FROM pg_extension;

SELECT * FROM pg_available_extensions

SELECT oid, extname, extversion FROM pg_extension;

-- #Check if the postgis extension is installed
SELECT * FROM pg_extension
WHERE extname = 'postgis';


-- #Install the postgis extension
CREATE EXTENSION postgis;

-- Install the postgis_raster extension
CREATE EXTENSION postgis_raster;

--Install the postgis_tiger_geocoder extension
CREATE EXTENSION postgis_tiger_geocoder CASCADE;

-- Install the postgis_topology extension
CREATE EXTENSION postgis_topology;

-- Install the postgis_sfcgal extension
CREATE EXTENSION postgis_sfcgal;
