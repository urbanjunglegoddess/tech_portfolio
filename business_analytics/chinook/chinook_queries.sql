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
ORDER BY total_sum DESC
LIMIT 1;

-- S1-Q3---Who is the best customer?
-- The customer who has spent the most money will be declared the best customer. Build a query that returns the person who has spent the most money. I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!;
SELECT i.customer_id, c.first_name, c.last_name, i.BILLING_COUNTRY, SUM(i.total) AS total_spent
FROM customer c
JOIN invoice i ON
c.id = i.customer_id
GROUP BY c.id, i.customer_id,i.BILLING_COUNTRY
ORDER BY total_spent DESC
LIMIT 1;


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
SELECT a.id,a.name AS artist_name, COUNT(t.id) AS track_count
FROM artist a
JOIN album alb ON
a.id = alb.artist_id
JOIN track t ON
alb.id = t.album_id
JOIN genre g ON
t.genre_id = g.id
WHERE g.name = 'Rock'
GROUP BY a.id, artist_name
ORDER BY track_count DESC
LIMIT 10;


-- S2-Q3---First, find which artist has earned the most according to the InvoiceLines
-- Now use this artist to find which customer spent the most on this artist.
-- For this query, you will need to use the Invoice, InvoiceLine, Track, Customer, Album, and Artist tables.
-- Notice, this one is tricky because the Total spent in the Invoice table might not be on a single product, so you need to use the InvoiceLine table to find out how many of each product was purchased, and then multiply this by the price for each artist.;
CREATE VIEW TopEarningArtist AS (
    SELECT 
        a.id,
        a.name AS artist_name,
        SUM(il.unit_price * il.quantity) AS total_earnings
    FROM
        artist a
    JOIN
        album al ON a.id = al.artist_id
    JOIN
        track t ON al.id = t.album_id
    JOIN
        invoice_line il ON t.id = il.track_id
    GROUP BY
        a.id, artist_name
    ORDER BY
        total_earnings DESC
    LIMIT 1
);
SELECT
	a.name, 
	c.id,
    c.first_name,
    c.last_name,
    SUM(il.unit_price * il.quantity) AS total_spent
FROM
    customer c
JOIN
    invoice i ON c.id = i.customer_id
JOIN
    invoice_line il ON i.id = il.invoice_id
JOIN
    track t ON il.track_id = t.id
JOIN
    album al ON t.album_id = al.id
JOIN
    artist a ON al.artist_id = a.id
JOIN
    TopEarningArtist tea ON a.id = tea.id
GROUP BY
    a.name,c.id, c.first_name, c.last_name
ORDER BY
    total_spent DESC
;
    
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