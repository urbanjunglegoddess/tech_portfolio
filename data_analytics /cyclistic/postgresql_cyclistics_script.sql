--Preparing data

-- Create the cyclistic database
CREATE SCHEMA cyclistic;

-- -- Import the data from the csv files from data sources
-- -- Step 1: Create a staging table
-- CREATE TABLE staging_table (
--     column1 datatype1,
--     column2 datatype2,
--     -- Add columns as per your CSV file structure
-- );
--
-- -- Step 2-5: Import data from CSV files into the staging table
-- -- Assume you have a folder 'csv_folder' containing your CSV files
--
-- -- Install the extension for reading CSV files if not already installed
-- CREATE EXTENSION IF NOT EXISTS postgres_fdw;
--
-- -- Create a foreign table mapping to the CSV files
-- CREATE SERVER csv_server FOREIGN DATA WRAPPER file_fdw;
--
-- CREATE FOREIGN TABLE csv_files (
--     column1 datatype1,
--     column2 datatype2
--     -- Add columns as per your CSV file structure
-- )
-- SERVER csv_server
-- OPTIONS (format 'csv', delimiter ',', filename 'path_to_csv_folder/csv_file.csv');
--
-- -- Insert data into the staging table from the foreign table
-- INSERT INTO staging_table (column1, column2)
-- SELECT column1, column2
-- FROM csv_files;
--
-- -- Clean up: Drop the foreign table
-- DROP FOREIGN TABLE csv_files;


-- Create divvy_trips table
CREATE TABLE divvy_trips
(   ride_id            VARCHAR(200),
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
    start_day          VARCHAR,
    end_day            VARCHAR,
    start_ride_tod     VARCHAR,
    end_ride_tod       VARCHAR
);

-- Create all_station table
CREATE TABLE all_stations
(
    id        VARCHAR(50),
    name      VARCHAR(200),
    latitude  NUMERIC,
    longitude NUMERIC,
    geo_point POINT
);


-- Add a foreign key constraint for start_station_id
ALTER TABLE all_stations
    ADD CONSTRAINT fk_start_station_id
        FOREIGN KEY (id) REFERENCES divvy_trips (start_station_id);

-- Add a foreign key constraint for end_station_id
ALTER TABLE all_stations
    ADD CONSTRAINT fk_end_station_id
        FOREIGN KEY (id) REFERENCES divvy_trips (end_station_id);

--Change member_casual to membership
alter table cyclistic.divvy_trips
    rename column "member_casual" to membership;

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
    end_location   = POINT(end_lng, end_lat);

-- Update end_day and start_day
UPDATE cyclistic.divvy_trips
SET end_day   = TO_CHAR(ended_at, 'Day'),
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
INSERT INTO cyclistic.all_stations (id, name, latitude, longitude)
SELECT DISTINCT start_station_id, start_station_name, start_lat, start_lng
FROM cyclistic.divvy_trips
ON CONFLICT (id) DO NOTHING;

-- Ensure there are no duplicate entries
INSERT INTO cyclistic.all_stations (id, name, latitude, longitude)
SELECT DISTINCT end_station_id, end_station_name, end_lat, end_lng
FROM cyclistic.divvy_trips
WHERE end_station_id NOT IN (SELECT id FROM cyclistic.all_stations)
ON CONFLICT (id) DO NOTHING;



--Cleaning data


-- Find how many records there are all together
SELECT COUNT(*)
FROM divvy_trips dt;

-- Check if there is null values in the table
SELECT COUNT(start_station_name), COUNT(start_station_id), count(start_lat), count(start_lng)
FROM divvy_trips dt
WHERE start_station_name IS NULL
   OR start_station_id IS NULL
   OR start_lat IS NULL
   OR start_lng IS NULL;

SELECT count(end_station_name), count(end_station_id), count(end_lat), count(end_lng)
FROM divvy_trips dt
WHERE end_station_name IS NULL
   OR end_station_id IS NULL
   OR end_lat IS NULL
   OR end_lng IS NULL;

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

-- noinspection SqlResolve
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


--Find any duplicates based on the ride_id
SELECT ride_id, COUNT(*)
FROM divvy_trips dt
GROUP BY ride_id
HAVING COUNT(*) > 1;

-- Find the earliest_date in the database
SELECT MIN(started_at) AS earliest_date
FROM divvy_trips dt;

-- Find the last date of the data
SELECT MAX(started_at) AS latest_date
FROM divvy_trips dt;

-- Find if there are date outside of 2020 and 2023
SELECT started_at
FROM divvy_trips
WHERE not (extract(year from "started_at") >= 2020 and extract(year from "started_at") <= 2023)


-- Delete those records from the table
