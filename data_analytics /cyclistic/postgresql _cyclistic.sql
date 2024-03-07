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
    end_ride_tod       VARCHAR
);

--Create a table with all the stations with their ids, latitudes, longitudes, and geo_points
CREATE TABLE all_stations (
    id varchar (20),
    name varchar(200),
    latitude numeric9,6),
    longitude DECIMAL(9,6),
    geo_point POINT
);

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

---- Insert stations data into all_stations table
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

-- See what column is not null in the duplicate_stations table
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

-- Show the records of the names and the distinct geo points where the geo points are not null


-- Delete the duplicate stations from the all_stations table
DELETE FROM all_stations
WHERE id IN (SELECT id
             FROM all_stations
             GROUP BY id
             HAVING COUNT(*) > 1);

-- Update the geo_point column
UPDATE all_stations
SET geo_point = POINT(longitude, latitude);



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


-- Describe the divvy_trips table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'divvy_trips';

-- Describe the all_stations table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'all_stations';

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
--There are  null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE start_day IS NULL;
--There are  null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE START_RIDE_TOD IS NULL;
--There are  null values in

SELECT COUNT(*)
FROM divvy_trips dt
WHERE END_RIDE_TOD IS NULL;
--There are  null values in
