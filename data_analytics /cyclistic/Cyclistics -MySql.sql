-- Create the database
CREATE DATABASE Cyclistic


-- Creat the tables
CREATE TABLE divvy_trips(
	ride_id INT,
	rideable_type VARCHAR(50),
	started_at DATETIME,
	ended_at DATETIME,
	start_station_name VARCHAR(200),
	start_station_id VARCHAR(50),
	end_station_name VARCHAR(200),
	end_station_id VARCHAR(50),
	start_lat DOUBLE, 
	start_long DOUBLE,
	end_lat DOUBLE, 
	end_long DOUBLE,
	memeber_casual VARCHAR(20)
);

CREATE TABLE divvy_stations(
id INT, 
name VARCHAR(200),
city VARCHAR (50), 
latitutde DOUBLE, 
longitude DOUBLE,
dpcapacity BIGINT, 
online_date DATETIME
)

ALTER divvy_trips 
	ADD COLUMN season VARCHAR(20), 
	ADD COLUMN day_of_the_week VARCHAR(20), 
	ADD COLUMN ride_length TIME,
	ADD COLUMN ride_time_of_day VARCHAR(20)
	
	
SELECT ride_id, started_at, ended_at, TIMESTAMPDIFF(MINUTE, started_at, ended_at) AS ride_length
FROM divvy_trips;

ALTER TABLE divvy_trips
ADD COLUMN ride_length TIME;

ALTER TABLE divvy_trips
MODIFY COLUMN started_at TIMESTAMP;

ALTER TABLE divvy_trips
MODIFY COLUMN ended_at TIMESTAMP;


UPDATE divvy_trips
SET ride_length = TIMESTAMPDIFF(MINUTE, started_at, ended_at)




-- View all the data in the database 
SELECT
	*
FROM
	divvy_trips dt;

SELECT
	*
FROM
	divvy_stations ds;



-- Explore the structure of the divvy_trips table
DESCRIBE divvy_trips;


SELECT
	start_lat,
	start_lng,
	end_lat,
	end_lng
FROM divvy_trips dt;

-- Filter data for a specific member type
SELECT member_casual, COUNT(*) 
FROM divvy_trips
-- WHERE member_casual = 'member';
GROUP BY member_casual 

-- Filter data for a specific season
SELECT season, COUNT(*) 
FROM divvy_trips
-- WHERE season = 'Winter';
GROUP BY season 

-- Check for missing values in rideable_type column
SELECT rideable_type,COUNT(rideable_type) AS bike_type_count,YEAR(started_at)
FROM divvy_trips dt 
GROUP BY rideable_type, YEAR(started_at);

-- Check for missing values in start_station_name column
SELECT COUNT(*) AS missing_start_station_count, start_station_name
FROM divvy_trips dt 
WHERE start_station_name  IS NULL
GROUP BY start_station_name;

-- Check for missing values in end_station_name column
SELECT COUNT(*) AS missing_end_station_count, end_station_name
FROM dt 
WHERE end_station_name IS NULL
GROUP BY end_station_name;

-- Check for duplicates
SELECT COUNT(*) AS duplicate_count,name
FROM divvy_stations ds 
GROUP BY name,
HAVING COUNT(*) > 1

-- Calculate the average ride length by member type
SELECT member_casual, AVG(ride_length) AS average_ride_length
FROM divvy_trips
GROUP BY member_casual;

-- Calculate the number of rides by season
SELECT season, YEAR (started_at), COUNT(*) AS total_rides
FROM divvy_trips
GROUP BY season,YEAR (started_at);

-- Calculate the total ride time by member type and season
SELECT member_casual, season, SUM(ride_length) AS total_ride_time
FROM divvy_trips
GROUP BY member_casual, season;

-- Calculate the average ride length by day of the week
SELECT day_of_the_week, AVG(ride_length) AS average_ride_length
FROM divvy_trips
GROUP BY day_of_the_week;

-- Calculate the average ride length for casual riders
SELECT AVG(ride_length) AS avg_ride_length_casual
FROM divvy_trips
WHERE member_casual = 'casual';

-- Calculate the average ride length for annual members
SELECT AVG(ride_length) AS avg_ride_length_annual
FROM divvy_trips
WHERE member_casual = 'annual';

-- Calculate the difference in average ride length between casual riders and annual members
SELECT 
    (SELECT AVG(ride_length) FROM divvy_trips WHERE member_casual = 'casual') -
    (SELECT AVG(ride_length) FROM divvy_trips WHERE member_casual = 'annual') AS avg_ride_length_difference;


-- Add the Spatial columns with the geometry points 
ALTER TABLE divvy_trips ADD COLUMN start_location POINT;
ALTER TABLE divvy_trips ADD COLUMN end_location POINT;
UPDATE divvy_trips SET start_location = POINT(start_lng, start_lat);
UPDATE divvy_trips SET end_location = POINT(end_lng, end_lat);

-- ALTER TABLE divvy_stations ADD COLUMN lat_long POINT;
-- ALTER TABLE divvy_stations MODIFY COLUMN lat_long  AS (POINT(latitude,longitude)) STORED;
-- UPDATE divvy_stations SET lat_long = POINT(longitude, latitude);

-- ALTER TABLE divvy_stations  MODIFY COLUMN station_location AS (POINT(latitude,longitude)) STORED NOT NULL, ADD SPATIAL INDEX(station_location);

-- CREATE SPATIAL INDEX idx_start_location ON divvy_trips(start_location);

-- ALTER TABLE divvy_trips  ADD SPATIAL INDEX(start_location);


SELECT
	COUNT(start_station_name)
FROM
	divvy_trips dt
WHERE
	start_station_name  IS NULL 


	
-- Create other commands that analyze the tables deeper
SELECT COUNT(*) FROM divvy_stations;

