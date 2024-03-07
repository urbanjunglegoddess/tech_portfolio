SELECT *
FROM album alb;
postgres
SELECT *
FROM artist art;

SELECT COUNT(*)
FROM customer c;

SELECT *
FROM employee e;

SELECT *
FROM genre g;

SELECT *
FROM invoice i;

SELECT *
FROM invoice_line il;

SELECT *
FROM media_type mt;

SELECT *
FROM playlist p;

SELECT *
FROM playlist_track;

SELECT *
FROM track;
--TESTING
SELECT count(Name)
FROM Track
WHERE Composer = 'U2';
--TESTING
SELECT max(Total)
FROM Invoice
WHERE BILLING_COUNTRY = 'Spain';
--TESTING
SELECT Title
FROM Employee
WHERE LAST_NAME = 'Johnson';


------Requiered Queries for Project---------------------------------------------------------------------------------------------------------------------------;


-- S1-Q1---Which countries have the most Invoices?
-- Use the Invoice table to determine the countries that have the most invoices. Provide a table of BillingCountry and Invoices ordered by the number of invoices for each country. The country with the most invoices should appear first.;
SELECT billing_country , COUNT(*) AS total_invoices
FROM invoice i
GROUP BY billing_country
ORDER BY total_invoices DESC;


-- S1-Q2---Which city has the best customers?
-- We want to throw a promotional Music Festival in the city we made the most money. Write a query that returns the 1 city that has the highest sum of invoice totals. Return both the city name and the sum of all invoice totals.;
SELECT i.billing_city,
i.billing_country,
SUM(i.total) AS total_sum
FROM invoice i
GROUP BY i.billing_city, i.billing_country
ORDER BY total_sum DESC;
--LIMIT 1;

-- S1-Q3---Who is the best customer?
-- The customer who has spent the most money will be declared the best customer. Build a query that returns the person who has spent the most money. I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!;
SELECT i.customer_id, c.first_name, c.last_name, i.BILLING_COUNTRY, SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON
c.id = i.customer_id
GROUP BY c.id, i.customer_id,i.BILLING_COUNTRY
ORDER BY total_spent DESC
--LIMIT 1;


-- S2-Q1---Use your query to return the email, first name, last name, and Genre of all Rock Music listeners (Rock & Roll would be considered a different category for this exercise). Return your list ordered alphabetically by email address starting with A.
-- I chose to link information from the Customer, Invoice, InvoiceLine, Track, and Genre tables, but you may be able to find another way to get at the information.;
SELECT DISTINCT c.email, c.first_name, c.last_name, g.name AS genre
FROM customer c
JOIN invoice i ON
c.id = i.customer_id
JOIN invoice_line il ON
i.id = il.invoice_id
JOIN track t ON
il.track_id = t.id
JOIN genre g ON
t.genre_id = g.id
WHERE g.name = 'Rock'
ORDER BY c.email ASC;

-- S2-Q2---Who is writing the rock music?
-- Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
-- Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands.;You will need TO use the Genre,Track , Album, and Artist tables.
SELECT art.name, count(t.id) AS total_track_count
FROM artist art
JOIN album alb ON
art.id = alb.artist_id
JOIN track t ON
alb.id = t.album_id
JOIN genre g ON
t.genre_id = g.id
WHERE t.genre_id = (SELECT g.id
FROM genre g2
WHERE name = 'rock')
GROUP BY art.name
ORDER BY total_track_count DESC
LIMIT 10;
-------------------------------------
SELECT a.name AS artist_name, COUNT(t.id) AS track_count
FROM artist a
JOIN album alb ON
a.id = alb.artist_id
JOIN track t ON
alb.id = t.album_id
JOIN genre g ON
t.genre_id = g.id
-- WHERE g.name = 'Rock'
GROUP BY artist_name
ORDER BY track_count DESC
LIMIT 10;


-- S2-Q3---First, find which artist has earned the most according to the InvoiceLines
-- Now use this artist to find which customer spent the most on this artist.
-- For this query, you will need to use the Invoice, InvoiceLine, Track, Customer, Album, and Artist tables.
-- Notice, this one is tricky because the Total spent in the Invoice table might not be on a single product, so you need to use the InvoiceLine table to find out how many of each product was purchased, and then multiply this by the price for each artist.;
SELECT a.name AS artist_name, c.first_name || ' ' || c.last_name AS customer_name, SUM(il.quantity * il.unit_price) AS total_spent
FROM invoice_line il
JOIN track t ON
     il.track_id = t.id
JOIN album al ON
     t.album_id = al.id
JOIN artist a ON
     al.artist_id = a.id
JOIN invoice i ON
     il.invoice_id = i.id
JOIN customer c ON
     i.customer_id = c.id
GROUP BY
     a.name, c.first_name, c.last_name
ORDER BY
     total_spent DESC;
    
    
-- S3-Q1---We want to find out the most popular music Genre for each country. We determine the most popular genre as the genre with the highest amount of purchases. Write a query that returns each country along with the top Genre. For countries where the maximum number of purchases is shared, return all Genres.
-- You will need to use the Invoice, InvoiceLine, Customer, Track, and Genre tables for this query.
SELECT c.country, g.name AS top_genre, g.id, COUNT(*) AS total_purchases
FROM invoice AS i
JOIN customer AS c ON
     i.customer_id = c.id
JOIN invoice_line AS il ON
     i.id = il.invoice_id
JOIN track AS t ON
     il.track_id =
     t.id
JOIN genre AS g ON
     t.genre_id = g.id
GROUP BY
     c.country, g.name, g.id
HAVING
     COUNT(*) = (
          SELECT COUNT(*)
								FROM invoice AS i2
								JOIN customer AS c2 ON
								i2.customer_id = c2.id
								JOIN invoice_line AS il2 ON
								i2.id = il2.invoice_id
								JOIN track AS t2 ON
								il2.track_id = t2.id
								JOIN genre AS g2 ON
								t2.genre_id = g2.id
								WHERE c2.country = c.country
								GROUP BY g2.name
								ORDER BY COUNT(*) DESC
								LIMIT 1)
ORDER BY total_purchases;


-- The most popular genre as the genre with the highest amount of purchases.
SELECT g.name, COUNT(*) AS total_purchases
FROM genre g
JOIN track t ON
     g.id = t.genre_id
JOIN invoice_line il ON
     t.id = il.track_id
GROUP BY
     g.name
ORDER BY
     total_purchases DESC
--LIMIT 1;
     
     
--S3-Q2---Return all the track names that have a song length longer than the average song length. Though you could perform this with two queries. Imagine you wanted your query to update based on when new data is put in the database. Therefore, you do not want to hard code the average into your query. You only need the Track table to complete this query.
--Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first.;;;
WITH TrackWithAvg AS (
SELECT Name, milliseconds, AVG(milliseconds) OVER () AS AvgSongLength
FROM Track
)
SELECT Name, milliseconds
FROM TrackWithAvg
WHERE milliseconds > AvgSongLength
ORDER BY
     milliseconds DESC;
    
   
--S3-Q3---Write a query that determines the first_name,last_name, and customer_id of the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount.;
--You should only need to use the Customer and Invoice tables.;;
SELECT country, first_name, last_name, id, total_spent
FROM( SELECT c.country, c.first_name, c.last_name, c.id, SUM(i.total) AS total_spent, ROW_NUMBER() OVER (PARTITION BY c.country
ORDER BY SUM(i.total) DESC
) AS rn
FROM customer c
INNER JOIN invoice i ON
               c.id = i.customer_id
GROUP BY c.country, c.first_name, c.last_name, c.id
     ) AS subquery
WHERE rn = 1;

WITH CustomerSpendingRank AS (
    SELECT
        c.id,
        c.first_name,
        c.last_name,
        c.country,
        SUM(i.total) AS total_spent,
        RANK() OVER (PARTITION BY c.country ORDER BY SUM(i.total) DESC) AS spending_rank
    FROM
        customer c
    JOIN
        invoice i ON c.id = i.customer_id
    GROUP BY
        c.id, c.first_name, c.last_name, c.country
)
SELECT
    csr.country,
    csr.first_name,
    csr.last_name,
    csr.customer_id,
    csr.total_spent
FROM
    CustomerSpendingRank csr
WHERE
    csr.spending_rank = 1;

   
   
-- --You should only need to use the Customer and Invoice tables.;;
-- Write a query that determines the first_name,last_name, and customer_id of the customer that has spent the most on music for each country. Write a query that returns the country along with the top customer and how much they spent. For countries where the top amount spent is shared, provide all customers who spent this amount.;
SELECT c.country, c.first_name, c.last_name, i.customer_id, SUM(i.total) as total_spent
FROM Customer c
JOIN Invoice i ON c.id = i.customer_id
GROUP BY c.country, c.first_name, c.last_name, i.customer_id
HAVING SUM(i.total) = (
    SELECT MAX(total_spent)
    FROM (
        SELECT c.country, i.customer_id, SUM(i.total) as total_spent
        FROM Customer c
        JOIN Invoice i ON c.id = i.customer_id
        GROUP BY c.country, i.customer_id
    ) as subquery
    WHERE subquery.country = c.country
)
ORDER BY c.country;

;



WITH CustomerSpendingByCountry AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        c.country,
        SUM(i.total) AS total_spent
    FROM
        customer c
    JOIN
        invoice i ON c.customer_id = i.customer_id
    GROUP BY
        c.customer_id, c.first_name, c.last_name, c.country
)
, MaxSpendingByCountry AS (
    SELECT
        country,
        MAX(total_spent) AS max_spent
    FROM
        CustomerSpendingByCountry
    GROUP BY
        country
)
SELECT
    csc.country,
    csc.first_name,
    csc.last_name,
    csc.customer_id,
    csc.total_spent
FROM
    CustomerSpendingByCountry csc
JOIN
    MaxSpendingByCountry msc ON csc.country = msc.country AND csc.total_spent = msc.max_spent
ORDER BY
    csc.country, csc.total_spent DESC;


------Extra Queries Created for the project--------------------------------------------------------------------------------------------------------------------;

--Retrieve the total revenue generated by each genre, sorted in descending order of revenue. Include the genre name and the total revenue for each genre.;;
SELECT g.name AS genre_name, g.id, SUM(il.unit_price * il.quantity) AS total_revenue
FROM genre g
JOIN
    track t ON
g.id = t.genre_id
JOIN
    invoice_line il ON
t.id = il.track_id
GROUP BY
    g.name, g.id 
ORDER BY
    total_revenue DESC;
   
   
-- List the top 5 customers who have made the most purchases (based on the total number of invoices). Include customer names and the total number of invoices they've made.;
SELECT CONCAT(c.first_name, ' ', c.last_name) customer_name, COUNT(i.id) AS total_invoices
FROM customer c
JOIN invoice i ON
c.id = i.customer_id
GROUP BY c.id
ORDER BY total_invoices DESC
LIMIT 5;


--Find the employee who has the highest total sales. Include the employee's first and last name, along with the total sales amount. You can calculate the total sales by summing the total column from the invoice table for each employee.;;
SELECT e.first_name || ' ' || e.last_name employee_name, SUM(i.total) total_sales
FROM employee e
FULL JOIN customer c ON
e.id = c.support_rep_id
FULL JOIN invoice i ON
c.id = i.customer_id
GROUP BY e.first_name, e.last_name
--HAVING
--    SUM(i.total) = (SELECT MAX(total_sales) FROM
--                            (SELECT SUM(i.total) AS total_sales
--                             FROM employee e
--                             JOIN customer c ON e.employee_id = c.support_rep_id
--                             JOIN invoice i ON c.customer_id = i.customer_id
--                             GROUP BY e.first_name, e.last_name) AS employee_sales)
ORDER BY total_sales DESC;


--Create a view called "TrackStats" that provides information about tracks. Include the track name, its duration in minutes (rounded to two decimal places), and the number of times it has been purchased. Calculate the duration in minutes using the "milliseconds" column from the track table.;
CREATE VIEW TrackStats AS 
  SELECT t.name name, ROUND(t.milliseconds / 60000.0, 2) duration_minutes, COUNT(il.id) times_purchsed
FROM TRACK T
LEFT JOIN INVOICE_LINE IL ON
t.id = il.track_id
GROUP BY name, duration_minutes
ORDER BY times_purchsed DESC;

SELECT *
FROM TrackStats;


--Find the top 10 tracks with the highest total sales revenue. Include the track name, artist name, and the total revenue for each track. Sort the results in descending order of revenue.
SELECT t.name track_name, art.name artisit_name, sum(il.unit_price * il.quantity) AS total_revenue
FROM artist art
JOIN album alb ON
art.id = alb.artist_id
JOIN track t ON
alb.id = t.album_id
JOIN invoice_line il ON
t.id = il.track_id
GROUP BY t.name, art.name, alb.title
ORDER BY
    total_revenue DESC
--LIMIT 10;;
    
    
--Create a view called "CustomerPurchases" that provides information about customers and their total purchases. Include the customer's full name, email, and the total amount they've spent on purchases. Sort the results in descending order of total purchases.;
CREATE VIEW CustomerPurchases AS
SELECT c.first_name || ' ' || c.last_name AS customer_name, c.email AS customer_email, SUM(i.total) AS total_purchases
FROM customer c
JOIN
    invoice i ON
c.id = i.customer_id
GROUP BY
    customer_name, customer_email
ORDER BY
    total_purchases DESC;

SELECT *
FROM CustomerPurchases;

--List the artists who have the most tracks in the "Rock" genre. Include the artist name and the number of tracks they have in the "Rock" genre.;
SELECT a.name AS artist_name, COUNT(t.id) AS track_count
FROM artist a
JOIN
    album alb ON
a.id = alb.artist_id
JOIN
    track t ON
alb.id = t.album_id
JOIN
    genre g ON
t.genre_id = g.id
WHERE g.name = 'Rock'
GROUP BY
    artist_name
ORDER BY
    track_count DESC;
   
   
--Find the average number of tracks in each playlist. Include the playlist name and the average number of tracks. Sort the results by the average number of tracks in descending order.
SELECT p.name AS playlist_name, AVG(pt.track_id) AS average_track_count
FROM playlist p
JOIN
    playlist_track pt ON
p.id = pt.playlist_id
GROUP BY
    playlist_name
ORDER BY
    average_track_count DESC;
   
   
--Find the total sales revenue for each year. Include the year and the total revenue for that year. Use the invoice_date column from the invoice table and aggregate by year.   
SELECT EXTRACT(YEAR
FROM invoice_date) AS YEAR, SUM(total) AS total_revenue
FROM invoice
GROUP BY
    YEAR
ORDER BY
    YEAR;
   
   
--Find the number of years each employee has been with the company. Include the employee's first and last name and the number of years they've been with the company. Use the hire_date column from the employee table and the current date.;
SELECT first_name, last_name, EXTRACT(YEAR
FROM CURRENT_DATE) - EXTRACT(YEAR
FROM hire_date) AS years_with_company
FROM employee;

-- Rank customers by their total purchases in descending order. Include the customer's first name, last name, and their purchase rank.
SELECT first_name, last_name, RANK() OVER (
ORDER BY total_purchases DESC) AS purchase_rank
FROM(
    SELECT c.first_name, c.last_name, SUM(i.total) AS total_purchases
FROM customer c
JOIN
        invoice i ON
c.id = i.customer_id
GROUP BY
        c.first_name, c.last_name
    ) AS customer_purchases;
   
   
--Find the average duration (in seconds) of tracks for each genre. Include the genre name and the average duration. Use the milliseconds column from the track table and aggregate by genre.
SELECT g.name AS genre_name, ROUND(AVG(milliseconds / 1000), 2) AS average_duration_seconds
FROM genre g
JOIN
    track t ON
g.id = t.genre_id
GROUP BY
    genre_name;
   
   
--Find the number of days between the latest and earliest invoice dates for each customer. Include the customer's first name, last name, and the number of days between dates.
SELECT c.first_name, c.last_name, CAST(DATE_PART('day', MAX(i.invoice_date) - MIN(i.invoice_date)) AS INTEGER) AS days_between_dates
FROM customer c
JOIN
    invoice i ON
c.id = i.customer_id
GROUP BY
    c.first_name, c.last_name;
   
   
-- Find the top-selling track for each genre. Include the genre name, track name, and the number of times it has been purchased.
SELECT genre.name AS genre_name, track.name AS track_name, COUNT(*) AS num_purchases
FROM genre
JOIN track ON
genre.id = track.genre_id
JOIN invoice_line ON
track.id = invoice_line.track_id
GROUP BY genre.name, track.name
ORDER BY num_purchases DESC
;


--Find customers whose email addresses contain the word "gmail." Include the customer's first name, last name, and email address.
SELECT first_name, last_name, email
FROM customer
WHERE email LIKE '%gmail%';


--Find the total revenue for each artist. Include the artist name and the total revenue generated from the tracks of that artist.
SELECT a.name AS artist_name, SUM(il.unit_price * il.quantity) AS total_revenue
FROM artist a
JOIN
    album al ON
a.id = al.artist_id
JOIN
    track t ON
al.id = t.album_id
JOIN
    invoice_line il ON
t.id = il.track_id
GROUP BY
    artist_name
ORDER BY
    total_revenue DESC;
    

   
--Find the top-selling artist in each genre.
WITH RankedArtists AS (
    SELECT g.name AS genre_name, a.name AS artist_name, ROW_NUMBER() OVER (PARTITION BY g.id
ORDER BY COUNT(il.id) DESC) AS artist_rank
FROM genre g
JOIN
        track t ON
g.id = t.genre_id
JOIN
        album al ON
t.album_id = al.id
JOIN
        artist a ON
al.artist_id = a.id
JOIN
        invoice_line il ON
t.id = il.id
GROUP BY
        genre_name, artist_name, g.id
)
SELECT genre_name, artist_name, artist_rank
FROM RankedArtists
WHERE artist_rank = 1;

-- Find the number of days since the last invoice was issued for each customer. Include the customer's first name, last name, and the number of days since their last invoice.
SELECT customer.first_name, customer.last_name,(CURRENT_DATE - MAX(invoice.invoice_date)) AS days_since_last_invoice
FROM customer
LEFT JOIN invoice ON
customer.id = invoice.customer_id
GROUP BY customer.first_name, customer.last_name;

-- Rank customers by their total purchases within each country. Include the customer's first name, last name, country, and their purchase rank
SELECT c.first_name, c.last_name, c.country, RANK() OVER (PARTITION BY c.country
ORDER BY SUM(i.total) DESC) AS purchase_rank
FROM customer c
JOIN invoice i ON
c.id = i.customer_id
GROUP BY c.first_name, c.last_name, c.country
ORDER BY purchase_rank;

--Find the customers with duplicate email addresses. Include the customer's first name, last name, and email address.
SELECT c1.first_name, c1.last_name, c1.email
FROM customer c1
JOIN
    customer c2 ON
c1.email = c2.email
AND c1.id <> c2.id;




--How many artist are in each genre.
SELECT
    g.name AS genre_name,
    COUNT(DISTINCT a.id) AS artist_count
FROM
    genre g
LEFT JOIN
    track t ON g.id = t.genre_id
LEFT JOIN
    album al ON t.album_id = al.id
LEFT JOIN
    artist a ON al.artist_id = a.id
GROUP BY
    genre_name
ORDER BY
    artist_count DESC;

SELECT COUNT(*)
FROM artist a ;



-- Find the total revenue for each country
SELECT
    c.country,
    SUM(i.total) AS total_revenue
FROM
    customer c
JOIN
    invoice i ON c.id = i.customer_id
GROUP BY
    c.country
ORDER BY
    total_revenue DESC;
    
   
   
   
   
   
   SELECT
    COUNT(*) AS num_artists,
    AVG(total_revenue) AS avg_revenue,
    STDDEV(total_revenue) AS std_dev_revenue,
    MIN(total_revenue) AS min_revenue,
    MAX(total_revenue) AS max_revenue,
    CORR(total_tracks, total_revenue) AS correlation_coefficient
FROM
    (
    SELECT
        a.id,
        a.name AS artist_name,
        COUNT(DISTINCT t.id) AS total_tracks,
        SUM(il.unit_price * il.quantity) AS total_revenue
    FROM
        artist a 
    LEFT JOIN
        album al ON a.id = al.artist_id
    LEFT JOIN
        track t ON al.id = t.album_id
    LEFT JOIN
        invoice_line il ON t.id = il.track_id
    GROUP BY
        a.id, artist_name
    ) AS artist_revenue_data;
   
   
   SELECT
    AVG(median_value) AS median
FROM (
    SELECT
        total_revenue AS median_value,
        ROW_NUMBER() OVER (ORDER BY total_revenue) AS row_asc,
        ROW_NUMBER() OVER (ORDER BY total_revenue DESC) AS row_desc
    FROM
        artist_revenue_data    
) AS subquery
WHERE
    row_asc = row_desc OR row_asc + 1 = row_desc OR row_asc = row_desc + 1;

