-- View dataset--
SELECT * 
FROM  Copy_of_IMDB_Top;

-- Changing the table name 
ALTER TABLE Copy_of_IMDB_Top RENAME TO Movies;

-- After table change
SELECT * 
FRom Movies

-- Top 5 Budgeted Movies

SELECT name, budget
FROM Movies
ORDER BY budget DESC 
LIMIT 5; 

-- Princess Mononoke update 
-- UPDATE Movies
-- SET budget = REPLACE( budget, 2400000000, 2350000); 
-- 
-- SELECT name, budget
-- FROM Movies 
-- WHERE name = "Princess Mononoke" 
-- 
-- 3 Idiots Update
-- UPDATE Movies
-- SET budget = REPLACE( budget, 550000000, 67000000); 
-- 
-- SELECT name, budget
-- FROM Movies 
-- WHERE name = "3 Idiots" 


-- Top 5 Rated Movies
SELECT name, rating
FROM Movies
ORDER BY rating DESC 
LIMIT 5; 


-- Top 5 Box Office Hits 
SELECT name, box_office
FROM Movies
ORDER BY box_office DESC 
LIMIT 5; 

-- Top 10 Most Profitable Movies 
 SELECT name, budget, box_office, (box_office - budget) AS profit 
 FROM Movies
 ORDER BY profit DESC
 LIMIT 10

-- Most Popular Genre
 -- SQLite Version
SELECT genre, COUNT(*) AS genre_count
FROM (
   SELECT TRIM(value) AS genre 
   FROM Movies 
   CROSS JOIN json_each('["'|| REPLACE(genre, ',', '","') ||'"]')
) AS genre_data
GROUP BY genre 
ORDER BY genre_count DESC 
-- LIMIT 5;

-- MySQL Version
SELECT genre, COUNT(*) AS genre_count
FROM (
   SELECT TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(m.genre, ',', n.n), ',', -1)) AS genre
   FROM Movies AS m
   CROSS JOIN (
      SELECT 1 + units.i + tens.i * 10 AS n
      FROM (
         SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
         SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
      ) AS units
      JOIN (
         SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
         SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
      ) AS tens
      ORDER BY n
   ) AS n
   WHERE n.n <= 1 + LENGTH(m.genre) - LENGTH(REPLACE(m.genre, ',', ''))
) AS genre_data
GROUP BY genre
ORDER BY genre_count DESC;


-- Top 10 Directors
SELECT directors, COUNT(*) As Number_of_Movies
From Movies
GROUP BY directors
Order By Number_of_Movies DESC
LIMIt 10;

-- How many moives in each rating category 
SELECT certificate, COUNT(*) AS total 
FROM Movies 
Group By certificate 
ORDER BY total DESC;

-- Best years for movies
SELECT year, COUNT(name) AS Movie_Count, AVG(rating) AS average_rating, SUM(box_office - budget) AS total_profit
FROM movies
GROUP BY year
ORDER BY year DESC
LIMIT 10;

SELECT year, COUNT(year) AS Number_of_Movies_Per_Year
 FROM Movies
 GROUP BY year
 ORDER BY COUNT(year) DESC
 Limit 10;

SELECT year, Count(name) AS Movie_Count  
 FROM Movies
 GROUP BY YEAR;



-- Find out how many movies are in each decade 
SELECT FLOOR(year/10) * 10 AS decade, COUNT(*) AS movie_count
FROM movies
GROUP BY decade
ORDER BY decade;


-- How many movies are in each decade Visual purposes
SELECT
    CONCAT(decade_start, ' - ', decade_end) AS decade,
    COUNT(year) AS number_of_movies
FROM (
    SELECT 
        FLOOR(year/10) * 10 + 1 AS decade_start,
        FLOOR(year/10) * 10 + 10 AS decade_end,
        year
    FROM Movies
) AS subquery
GROUP BY decade_start, decade_end
ORDER BY decade_start;



-- Most popular movie genre in each decade 
WITH genre_counts AS (
  SELECT genre, COUNT(*) AS genre_count, year
  FROM (
    SELECT TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(m.genre, ',', n.n), ',', -1)) AS genre, m.year
    FROM Movies AS m
    CROSS JOIN (
      SELECT 1 + units.i + tens.i * 10 AS n
      FROM (
        SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
        SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
      ) AS units
      JOIN (
        SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
        SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
      ) AS tens
      ORDER BY n
    ) AS n
    WHERE n.n <= 1 + LENGTH(m.genre) - LENGTH(REPLACE(m.genre, ',', ''))
  ) AS genre_data
  GROUP BY genre, year
), decade_max_genre AS (
  SELECT 
    CONCAT(d.decade_start, ' - ', d.decade_end) AS decade,
    gc.genre,
    ROW_NUMBER() OVER (PARTITION BY d.decade_start ORDER BY gc.genre_count DESC) AS rn
  FROM (
    SELECT 
      FLOOR(year/10) * 10 + 1 AS decade_start,
      FLOOR(year/10) * 10 + 10 AS decade_end,
      year
    FROM Movies
    GROUP BY FLOOR(year/10), year
  ) AS d
  JOIN genre_counts gc ON gc.year >= d.decade_start AND gc.year <= d.decade_end
)
SELECT decade, genre
FROM decade_max_genre
WHERE rn = 1
ORDER BY decade;


-- Find the movie running time 
SELECT name, run_time 
FROM Movies m
ORDER BY run_time DESC;


-- The names of the actors in all the movies 
SELECT name, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(casts, ',', n.n), ',', -1)) AS cast_member
FROM Movies
CROSS JOIN (
  SELECT 1 + units.i + tens.i * 10 AS n
  FROM (
    SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
    SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
  ) AS units
  JOIN (
    SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
    SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
  ) AS tens
  ORDER BY n
) AS n
WHERE n.n <= 1 + LENGTH(casts) - LENGTH(REPLACE(casts, ',', ''));

-- Actors in the most profitable movies
SELECT m.name, c.cast_member
FROM (
  SELECT name, box_office - budget AS profit
  FROM Movies
) AS m
JOIN (
  SELECT name, TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(casts, ',', n.n), ',', -1)) AS cast_member
  FROM Movies
  CROSS JOIN (
    SELECT 1 + units.i + tens.i * 10 AS n
    FROM (
      SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
      SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
    ) AS units
    JOIN (
      SELECT 0 AS i UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL
      SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9
    ) AS tens
    ORDER BY n
  ) AS n
  WHERE n.n <= 1 + LENGTH(casts) - LENGTH(REPLACE(casts, ',', ''))
) AS c ON m.name = c.name
WHERE m.profit > 0
GROUP BY m.name, c.cast_member
ORDER BY COUNT(*) DESC;

-- Find what writers worked the same movies 

