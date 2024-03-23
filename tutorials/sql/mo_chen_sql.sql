-- SELECT statement
SELECT * FROM employees;
SELECT * FROM shops;
SELECT * FROM locations;
SELECT * FROM suppliers;

-- Describe the employees table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'employees';

-- Describe the shops table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'shops';

-- Describe the locations table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'locations';

-- Describe the suppliers table
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'suppliers';

--=====================================================================================
-- SELECT specific columns

SELECT employee_id, first_name, last_name, hire_date
FROM employees;

SELECT shops.coffeeshop_id, coffeeshop_name
FROM shops;

--=====================================================================================
-- WHERE clause, AND, & OR operators

-- Select employees who only work in Common Grounds
SELECT * FROM employees
WHERE coffeeshop_id = 1;

--Select employees who work in Early Rise
SELECT * FROM employees
WHERE coffeeshop_id = 2;

-- Select employees who work in Ancient Bean
SELECT * FROM employees
WHERE coffeeshop_id = 3;

--Select employees who work in Urban Grind
SELECT * FROM employees
WHERE coffeeshop_id = 4;

--Select the employees who work in Trembling Cup
SELECT * FROM employees
WHERE coffeeshop_id = 5;


-- Select employees with a salary greater than 50000
SELECT * FROM employees
WHERE salary > 50000;

-- Select employees who make less than 50000
SELECT * FROM employees
WHERE salary < 50000;

-- Select employees who make less than 50000 and work in Common Grounds
SELECT * FROM employees
WHERE salary < 50000 AND coffeeshop_id = 1;

-- Select employees who make less than 50000 and work in Early Rise
SELECT * FROM employees
WHERE salary < 50000 AND coffeeshop_id = 2;

-- Select employees who make less than 50000 and work in Ancient Bean
SELECT * FROM employees
WHERE salary < 50000 AND coffeeshop_id = 3;

-- Select employees who make less than 50000 and work in Urban Grind
SELECT * FROM employees
WHERE salary < 50000 AND coffeeshop_id = 4;

-- Select employees who make less than 50000 and work in Trembling Cup
SELECT * FROM employees
WHERE salary < 50000 AND coffeeshop_id = 5;

-- Select all employees who work in the Common Grounds, make more than 50000, and are male
SELECT * FROM employees
WHERE coffeeshop_id = 1 AND salary  > 50000 AND gender = 'M';

-- Select all employees who work in the Early Rise, make more than 50000, and are women
SELECT * FROM employees
WHERE coffeeshop_id = 2 AND salary > 50000 AND gender = 'F';

-- Select all employees who work in the Ancient Bean, make more than 50000, and were hired after 2017
SELECT * FROM employees
WHERE coffeeshop_id = 3 AND salary > 50000 AND hire_date > '2017-01-01';

-- Select all employees who work in the Urban Grind, make more than 50000, and were hired after 2017
SELECT * FROM employees
WHERE coffeeshop_id = 4 AND salary > 50000 AND hire_date > '2017-01-01';

-- Select all employees who work in the Trembling Cup, make more than 50000, and were hired after 2017
SELECT * FROM employees
WHERE coffeeshop_id = 5 AND salary > 50000 AND hire_date > '2017-01-01';

--=====================================================================================
--Equal to, Less than, Greater than, Less than or equal to, Greater than or equal to, Not equal to, Not equal to

-- Select employees who work in Common Grounds
SELECT * FROM employees
WHERE coffeeshop_id = 1;

--Select employees who salary is greater than or equal to 50000
SELECT * FROM employees
WHERE salary >= 50000;

-- Select employees who salary is less than or equal to 50000
SELECT * FROM employees
WHERE salary <= 50000;

-- Select employees who salary is not equal to 50000
SELECT * FROM employees
WHERE salary != 50000;

-- Select employees who salary is not equal to 50000
SELECT * FROM employees
WHERE salary <> 50000;

-- Select employees who work in Common Grounds and make more than 50000
SELECT * FROM employees
WHERE coffeeshop_id = 1 AND salary > 50000;

--=====================================================================================
--IN, Not IN, BETWEEN, Not BETWEEN, IS NULL, IS NOT NULL

-- Select employees who work in Common Grounds, Early Rise, and Ancient Bean
SELECT * FROM employees
WHERE coffeeshop_id IN (1, 2, 3);

-- Select employees who work in Urban Grind and Trembling Cup
SELECT * FROM employees
WHERE coffeeshop_id IN (4, 5);

-- Select all rows from the suppliers table where the supplier is Beans and Barely
SELECT * FROM suppliers
WHERE supplier_name = 'Beans and Barley';

-- Select all rows from the suppliers table where the supplier is Coffee and Tea
SELECT * FROM suppliers
WHERE supplier_name = 'Bean Me Up';

-- Select all the rows the suppliers tabel where the supplier is not Beans and Barley
SELECT * FROM suppliers
WHERE supplier_name != 'Beans and Barley';

SELect * FROM suppliers
WHERE supplier_name <> 'Beans and Barley';

-- Select all Robusta and Arabica coffee types
SELECT * FROM suppliers
WHERE coffee_type IN ('Robusta', 'Arabica');

Select * FROM suppliers
WHERE coffee_type = 'Robusta' OR coffee_type = 'Arabica';

-- Select all rows from the suppliers table where the coffee type is not Robusta or Arabica
SELECT * FROM suppliers
WHERE coffee_type NOT IN ('Robusta', 'Arabica');

-- Select all employees with missing email addresses
SELECT * FROM employees
WHERE email IS NULL;

-- Select all the employees who make less than 50000 and have a missing email address
SELECT * FROM employees
WHERE salary < 50000 AND email IS NULL;

-- Select all employees who make between 40000 and 60000
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- Select all employees employee id, first and last names and salary who make between 40000 and 60000
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- Select all employees who were hired between 2015 and 2017
SELECT * FROM employees
WHERE hire_date BETWEEN '2015-01-01' AND '2017-12-31';

-- Select all employees who were hired before 2015
SELECT * FROM employees
WHERE hire_date < '2015-01-01';

-- Select all the eployees who were not hired betweeen 2015 and 2017
SELECT * FROM employees
WHERE hire_date NOT BETWEEN '2015-01-01' AND '2017-12-31';

--=====================================================================================
-- ORDER BY, LIMIT, DISTINCT, OFFSET, Renaming columns

--ORDER BY
-- Select all employees and order by last name
SELECT * FROM employees
ORDER BY last_name;

--Select all the employe salaries and order them in descending order
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary DESC;

-- Select all employees and order by hire date in ascending order
SELECT * FROM employees
ORDER BY hire_date;

--LIMIT
--Limit the number of rows returned to 5
SELECT * FROM employees
LIMIT 5;

--Select the first 5 employees and order them by last name
SELECT * FROM employees
ORDER BY last_name
LIMIT 5;

--Select the first 5 employees and order them by last name in descending order
SELECT * FROM employees
ORDER BY last_name DESC
LIMIT 5;


-- Select the top 10 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 10;

-- Select the top 10 highest paid employees who work in Common Grounds
SELECT * FROM employees
WHERE coffeeshop_id = 1
ORDER BY salary DESC
LIMIT 10;

-- Select the top 10 highest paid employees who work in Early Rise
SELECT * FROM employees
WHERE coffeeshop_id = 2
ORDER BY salary DESC
LIMIT 10;

-- Select the top 10 highest paid employees who work in Ancient Bean
SELECT * FROM employees
WHERE coffeeshop_id = 3
ORDER BY salary DESC
LIMIT 10;

-- Select the top 10 highest paid employees who work in Urban Grind
SELECT * FROM employees
WHERE coffeeshop_id = 4
ORDER BY salary DESC
LIMIT 10;

-- Select the top 10 highest paid employees who work in Trembling Cup
SELECT * FROM employees
WHERE coffeeshop_id = 5
ORDER BY salary DESC
LIMIT 10;

-- DISTINCT
-- Select all unique coffeeshop ids
SELECT DISTINCT coffeeshop_id
FROM employees;

-- Select all unique coffeeshop ids and order them in ascending order
SELECT DISTINCT coffeeshop_id
FROM employees
ORDER BY coffeeshop_id;

-- Select all the unique employee_id and coffeeshop_id pairs from the employees table that emails are not null, there salary is below 50000, and they work in Common Grounds
SELECT DISTINCT employee_id, coffeeshop_id
FROM employees
WHERE email IS NOT NULL AND salary < 50000 AND coffeeshop_id = 1;

-- OFFSET
-- Select all employees and skip the first 5 rows
SELECT * FROM employees
OFFSET 5;

-- Select all employees and skip the first 5 rows and limit the results to 5
SELECT * FROM employees
OFFSET 5
LIMIT 5;

-- Select all employees and skip the first 5 rows and limit the results to 5 and order them by last name
SELECT * FROM employees
ORDER BY last_name
OFFSET 5
LIMIT 5;

-- RENAMING COLUMNS
-- Select all employees and rename the employee_id column to id
SELECT employee_id AS id, first_name, last_name, hire_date
FROM employees;

-- Select all employees and rename the employee_id column to id and the first_name column to first
SELECT employee_id AS id, first_name AS first, last_name, hire_date
FROM employees;

-- Select all employees and rename the employee_id column to id and the first_name column to first and the last_name column to last
SELECT employee_id AS id, first_name AS first, last_name AS last, hire_date
FROM employees;

--=====================================================================================
    --EXTRACT
-- Select the hire date and extract the year from it
SELECT hire_date, EXTRACT(YEAR FROM hire_date)
FROM employees;

-- Select the hire date and extract the month from it
SELECT hire_date, EXTRACT(MONTH FROM hire_date)
FROM employees;

-- Select the hire date and extract the day from it
SELECT hire_date, EXTRACT(DAY FROM hire_date)
FROM employees;

-- Select the hire date and extract the year, month, and day from it
SELECT hire_date, EXTRACT(YEAR FROM hire_date) AS year, EXTRACT(MONTH FROM hire_date) AS month, EXTRACT(DAY FROM hire_date) AS day
FROM employees;

--=====================================================================================
-- UPPER, LOWER, INITCAP, LENGTH, TRIM, CONCAT, SUBSTRING

-- UPPER
-- Select the first name and last name and convert them to uppercase
SELECT first_name, last_name, UPPER(first_name), UPPER(last_name)
FROM employees;

-- LOWER
-- Select the first name and last name and convert them to lowercase
SELECT first_name, last_name, LOWER(first_name), LOWER(last_name)
FROM employees;

-- INITCAP
-- Select the first name and last name and convert them to initcap
SELECT first_name, last_name, INITCAP(first_name), INITCAP(last_name)
FROM employees;

-- LENGTH
-- Select the first name and last name and get the length of each
SELECT first_name, last_name, LENGTH(first_name), LENGTH(last_name)
FROM employees;

-- TRIM
-- Select the first name and last name and trim any leading or trailing whitespace
SELECT first_name, last_name, TRIM(first_name), TRIM(last_name)
FROM employees;

-- CONCAT
-- Select the first name and last name and concatenate them
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name)
FROM employees;

SELECT first_name,last_name,first_name || ' ' || last_name AS full_name
FROM employees;

-- Concatenate columns to create a sentence
SELECT first_name || ' ' || last_name || ' makes ' || salary
FROM employees;

-- Concatenate columns to create a sentence
SELECT first_name || ' ' || last_name || ' makes ' || salary || ' and works at ' || coffeeshop_id || ' and has an email address of ' || email AS employee_info
FROM employees;


-- SUBSTRING
-- Select the first name and last name and get the first 3 characters of each
SELECT first_name, last_name, SUBSTRING(first_name FROM 1 FOR 3), SUBSTRING(last_name FROM 1 FOR 3)
FROM employees;

-- Get the email from the 5th character
SELECT email,SUBSTRING(email FROM 5)
FROM employees;

-- Get the email from the 5th character to the 10th character
SELECT email,SUBSTRING(email FROM 5 FOR 6)
FROM employees;


--=====================================================================================
--Boolean Operators, Wildcards, LIKE, ILIKE

--Boolean Operators
-- Select all employees who work in Common Grounds and are female
SELECT * FROM employees
WHERE gender = 'F' AND coffeeshop_id = 1;

--If the person makes less than 50k, then true, otherwise false
SELECT first_name || ' ' || last_name AS full_name,(salary < 50000) AS less_than_50k
FROM employees;

-- If the person is a female and makes less than 50k, then true, otherwise false
SELECT first_name || ' ' || last_name AS full_name,(salary < 50000 AND gender = 'F') AS less_than_50k_female
FROM employees;

-- Wildcards
-- Select all employees whose first name starts with the letter 'A'
SELECT * FROM employees
WHERE first_name LIKE 'A%';

-- Select all employees whose last name starts with the letter 'B'
SELECT * FROM employees
WHERE last_name LIKE 'B%';

-- Boolean expressions with wildcards (% subString)
-- if email has '.com', return true, otherwise false
SELECT email,(email like '%.com%') AS dotcom_flag
FROM employees;

SELECT email, (email like '%.gov%') AS dotgov_flag
FROM employees;
--=====================================================================================
--POSITION,STRPOS, REPLACE, TRANSLATE, REPEAT, REVERSE

-- POSITION
-- Select the email and the position of the '@' symbol
SELECT email, POSITION('@' IN email)
FROM employees;

-- SUBSTRING & POSITION to find the email client
SELECT email,SUBSTRING(email FROM POSITION('@' IN email))
FROM employees;

SELECT email,SUBSTRING(email FROM POSITION('@' IN email) + 1)
FROM employees;

-- STRPOS
-- Select the email and the position of the '@' symbol
SELECT email, STRPOS(email, '@')
FROM employees;

-- REPLACE
-- Select the email and replace the '.com' with '.org'
SELECT email, REPLACE(email, '.com', '.org')
FROM employees;

-- TRANSLATE
-- Select the email and replace all the 'a' with 'x'
SELECT email, TRANSLATE(email, 'a', 'x')
FROM employees;

-- REPEAT
-- Select the first name and repeat it 3 times
SELECT first_name, REPEAT(first_name, 3)
FROM employees;

-- REVERSE
-- Select the first name and reverse it
SELECT first_name, REVERSE(first_name)
FROM employees;

--=====================================================================================
--MIN, MAX, AVG, SUM, COUNT, GROUP BY, HAVING

-- MIN
-- Select the minimum salary
SELECT MIN(salary)
FROM employees;

-- MAX
-- Select the maximum salary
SELECT MAX(salary)
FROM employees;

-- AVG
-- Select the average salary
SELECT AVG(salary)
FROM employees;

-- SUM
-- Select the sum of all salaries
SELECT SUM(salary)
FROM employees;

-- Select difference between maximum and minimum salary
SELECT MAX(salary) - MIN(salary)
FROM employees;

-- Round average salary to nearest integer
SELECT ROUND(AVG(salary),0)
FROM employees;



-- COUNT
-- Select the number of employees
SELECT COUNT(*)
FROM employees;

-- Count how may null email addresses there are
SELECT COUNT(email)
FROM employees;

-- summary
SELECT
  MIN(salary) as min_sal,
  MAX(salary) as max_sal,
  MAX(salary) - MIN(salary) as diff_sal,
  round(avg(salary), 0) as average_sal,
  sum(salary) as total_sal,
  count(*) as num_of_emp
FROM employees;


-- GROUP BY
-- Select the coffeeshop_id and the average salary for each coffeeshop
SELECT coffeeshop_id, AVG(salary)
FROM employees
GROUP BY coffeeshop_id;

-- Count how many employees work in each coffeeshop
SELECT coffeeshop_id, COUNT(*)
FROM employees
GROUP BY coffeeshop_id;

-- Return the number of employees, the avg & min & max & total salaries for each coffeeshop
SELECT
	coffeeshop_id,
	COUNT(*) AS num_of_emp,
	ROUND(AVG(salary), 0) AS avg_sal,
	MIN(salary) AS min_sal,
    MAX(salary) AS max_sal,
	SUM(salary) AS total_sal
FROM employees
GROUP BY coffeeshop_id
ORDER BY num_of_emp DESC;

-- HAVING
-- Select the coffeeshop_id and the average salary for each coffeeshop where the average salary is greater than 50000
SELECT coffeeshop_id, AVG(salary)
FROM employees
GROUP BY coffeeshop_id
HAVING AVG(salary) > 50000;

-- Select the coffeeshop_id and the minimum salary for each coffeeshop where the average salary is greater than 50000
SELECT coffeeshop_id, AVG(salary)
FROM employees
GROUP BY coffeeshop_id
HAVING MIN(salary) > 50000;

-- Select the coffeeshop_id and the maximum salary for each coffeeshop where the average salary is greater than 50000
SELECT coffeeshop_id, AVG(salary)
FROM employees
GROUP BY coffeeshop_id
HAVING MAX(salary) > 50000;
-- After GROUP BY, return only the coffeeshops with more than 200 employees
SELECT
	coffeeshop_id,
	COUNT(*) AS num_of_emp,
	ROUND(AVG(salary), 0) AS avg_sal,
	MIN(salary) AS min_sal,
    MAX(salary) AS max_sal,
	SUM(salary) AS total_sal
FROM employees
GROUP BY coffeeshop_id
HAVING COUNT(*) > 200  -- filter, alter "where" after "gruop by"
ORDER BY num_of_emp DESC;

-- After GROUP BY, return only the coffeeshops with a minimum salary of less than 10k
SELECT
	coffeeshop_id,
	COUNT(*) AS num_of_emp,
	ROUND(AVG(salary), 0) AS avg_sal,
	MIN(salary) AS min_sal,
    MAX(salary) AS max_sal,
	SUM(salary) AS total_sal
FROM employees
GROUP BY coffeeshop_id
HAVING MIN(salary) < 10000
ORDER BY num_of_emp DESC;

--=====================================================================================
-- CASE,CASE W/GROUP BY, CASE for transposing data, CAST, COALESCE, NULLIF, GREATEST, LEAST

-- CASE
-- If pay is less than 50k, then low pay, otherwise high pay
SELECT
	employee_id,
	first_name || ' ' || last_name as full_name,
	salary,
	CASE
		WHEN salary < 50000 THEN 'low pay'
		WHEN salary >= 50000 THEN 'high pay'
		ELSE 'no pay'
	END as pay_category
FROM employees
ORDER BY salary DESC;

-- Create a case where if the salary is less than 20k, then low pay, if it is between 20k and 40k, then medium pay, otherwise high pay
SELECT
    employee_id,
    first_name || ' ' || last_name as full_name,
    salary,
    CASE
        WHEN salary < 20000 THEN 'low pay'
        WHEN salary BETWEEN 20000 AND 40000 THEN 'medium pay'
        WHEN salary > 40000 THEN 'high pay'
        ELSE 'no pay'
    END as pay_category
FROM employees
ORDER BY salary DESC;

-- CASE W/GROUP BY
-- Select the coffeeshop_id and the average salary for each coffeeshop where the average salary is greater than 50000
SELECT
    coffeeshop_id,
    AVG(salary),
    CASE
        WHEN AVG(salary) < 50000 THEN 'low pay'
        WHEN AVG(salary) >= 50000 THEN 'high pay'
        ELSE 'no pay'
    END as pay_category
FROM employees
GROUP BY coffeeshop_id;

-- Return the count of employees in each pay category
SELECT a.pay_category, COUNT(*)
FROM(
	SELECT
		employee_id,
	    first_name || ' ' || last_name as full_name,
		salary,
    CASE
			WHEN salary < 20000 THEN 'low pay'
			WHEN salary BETWEEN 20000 and 50000 THEN 'medium pay'
			WHEN salary > 50000 THEN 'high pay'
			ELSE 'no pay'
		END as pay_category
	FROM employees
	ORDER BY salary DESC
) a
GROUP BY a.pay_category;

-- CASE for transposing data
-- Transpose above
SELECT
	SUM(CASE WHEN salary < 20000 THEN 1 ELSE 0 END) AS low_pay,
	SUM(CASE WHEN salary BETWEEN 20000 AND 50000 THEN 1 ELSE 0 END) AS medium_pay,
	SUM(CASE WHEN salary > 50000 THEN 1 ELSE 0 END) AS high_pay
FROM employees;

-- CAST
-- Select the hire date and cast it as a date
SELECT hire_date, CAST(hire_date AS DATE)
FROM employees;

-- COALESCE
-- Select the email and if it is null, then replace it with 'no email'
SELECT email, COALESCE(email, 'no email')
FROM employees;

-- NULLIF
-- Select the email and if it is 'no email', then replace it with null
SELECT email, NULLIF(email, 'no email')
FROM employees;

-- GREATEST
-- Select the first name, last name, and the greatest salary and hire date
SELECT first_name, last_name, GREATEST(salary, hire_date)
FROM employees;

-- LEAST
-- Select the first name, last name, and the least salary and hire date
SELECT first_name, last_name, LEAST(salary, hire_date)
FROM employees;


--=====================================================================================
-- JOINS
-- INNER JOIN
-- Select all employees and their coffeeshop name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name
FROM employees e
INNER JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id;

-- Select all shops and the location name
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city
FROM shops s
INNER JOIN locations l
ON s.city_id = l.city_id;


-- Select all employees and their coffeeshop name and location name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name,
         l.city_id, l.city
FROM employees e
INNER JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id
INNER JOIN locations l
ON s.city_id = l.city_id;

-- Select all the shops, locations, and suppliers
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city_id, sp.supplier_name, sp.coffee_type
FROM shops s
INNER JOIN locations l
ON s.city_id = l.city_id
INNER JOIN suppliers sp
ON s.coffeeshop_id = sp.coffeeshop_id;

-- LEFT JOIN
-- Select all employees and their coffeeshop name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name
FROM employees e
LEFT JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id;

-- Select all shops and the location name
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city
FROM shops s
LEFT JOIN locations l
ON s.city_id = l.city_id;

-- Select all employees and their coffeeshop name and location name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name,
         l.city_id, l.city
FROM employees e
LEFT JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id
LEFT JOIN locations l on l.city_id = s.city_id

-- Select all the shops, locations, and suppliers
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city_id, sp.supplier_name, sp.coffee_type
FROM shops s
LEFT JOIN locations l
ON s.city_id = l.city_id
LEFT JOIN suppliers sp
ON s.coffeeshop_id = sp.coffeeshop_id;

-- RIGHT JOIN
-- Select all employees and their coffeeshop name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name
FROM employees e
RIGHT JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id;

-- Select all shops and the location name
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city
FROM shops s
RIGHT JOIN locations l
ON s.city_id = l.city_id;

-- Select all employees and their coffeeshop name and location name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name,
         l.city_id, l.city
FROM employees e
RIGHT JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id
RIGHT JOIN locations l on l.city_id = s.city_id

-- Select all the shops, locations, and suppliers
SELECT s.coffeeshop_id, s.coffeeshop_name, l.city_id, l.city_id, sp.supplier_name, sp.coffee_type
FROM shops s
RIGHT JOIN locations l
ON s.city_id = l.city_id
RIGHT JOIN suppliers sp
ON s.coffeeshop_id = sp.coffeeshop_id;

-- FULL JOIN
-- Select all employees and their coffeeshop name
SELECT e.employee_id, e.first_name, e.last_name, e.hire_date, e.salary, e.email,
         s.coffeeshop_id, s.coffeeshop_name
FROM employees e
FULL JOIN shops s
ON e.coffeeshop_id = s.coffeeshop_id;






--=====================================================================================
--UNION, UNION ALL, INTERSECT, EXCEPT

-- UNION
-- Return all cities and countries
SELECT city FROM locations
UNION
SELECT country FROM locations;

-- Return all cities and countries and order them
SELECT city FROM locations
UNION
SELECT country FROM locations
ORDER BY city;

-- UNION ALL keeps duplicates
SELECT country FROM locations
UNION ALL
SELECT country FROM locations;

-- Return all coffeeshop names, cities and countries
SELECT coffeeshop_name FROM shops
UNION
SELECT city FROM locations
UNION
SELECT country FROM locations;

-- INTERSECT
-- Return all cities and countries
SELECT city FROM locations
INTERSECT
SELECT country FROM locations;

-- Return all cities and countries and order them
SELECT city FROM locations
INTERSECT
SELECT country FROM locations
ORDER BY city;

-- Return all cities and countries
SELECT country FROM locations
INTERSECT
SELECT country FROM locations;

-- EXCEPT
-- Return all cities except countries
SELECT city FROM locations
EXCEPT
SELECT country FROM locations;

-- Return all employees in Common Grounds and except those in Ancient Bean
SELECT * FROM employees
WHERE coffeeshop_id = 1
EXCEPT
SELECT * FROM employees
WHERE coffeeshop_id = 3;

-- Return all employees in Common Grounds and except those in Ancient Bean and order them by salary
SELECT * FROM employees
WHERE coffeeshop_id = 1
EXCEPT
SELECT * FROM employees
WHERE coffeeshop_id = 3
ORDER BY salary;

--=====================================================================================
-- Subqueries

-- Return all employees who work in Ancient Bean and Urban Grind
SELECT *
FROM (
	SELECT *
	FROM employees
	where coffeeshop_id IN (3,4)
) as a;

-- Return all employees who work in Ancient Bean and Urban Grind
SELECT
  a.employee_id,
	a.first_name,
	a.last_name
FROM (
	SELECT *
	FROM employees
	where coffeeshop_id IN (3,4)
) a;

-- Return all employees max salary who work in Ancient Bean and Urban Grind
SELECT
    a.employee_id,
        a.first_name,
        a.last_name, (
    SELECT max(salary)
    FROM employees
  LIMIT 1
) max_sal
FROM (
    SELECT *
    FROM employees
    WHERE coffeeshop_id IN (3,4)
) a;

-- Return all employees and the average salary
SELECT
	first_name,
	last_name,
	salary,
	(
		SELECT ROUND(AVG(salary), 0)
		FROM employees
		LIMIT 1
	) avg_sal
FROM employees;

-- Return all employees and the difference between their salary and the average salary
SELECT
	first_name,
	last_name,
	salary,
	salary - ( -- avg_sal
		SELECT ROUND(AVG(salary), 0)
		FROM employees
		LIMIT 1
	) avg_sal_diff
FROM employees;

-- Return all US coffee shops
SELECT *
FROM shops
WHERE city_id IN ( -- US city_id's
	SELECT city_id
	FROM locations
	WHERE country = 'United States'
);

-- Return all employees who work in US coffee shops
SELECT *
FROM employees
WHERE coffeeshop_id IN ( -- US coffeeshop_id's
	SELECT coffeeshop_id
	FROM shops
	WHERE city_id IN ( -- US city-id's
		SELECT city_id
		FROM locations
		WHERE country = 'United States'
	)
);

-- Return all employees who make over 35k and work in US coffee shops
SELECT *
FROM employees
WHERE salary > 35000 AND coffeeshop_id IN ( -- US coffeeshop_id's
	SELECT coffeeshop_id
	FROM shops
	WHERE city_id IN ( -- US city_id's
		SELECT city_id
		FROM locations
		WHERE country = 'United States'
	)
);

-- 30 day moving total pay
-- The inner query calculates the total_salary of employees who were hired "within" the 30-day period before the hire_date of the current employee
SELECT
	hire_date,
	salary,
	(
		SELECT SUM(salary)
		FROM employees e2
		WHERE e2.hire_date BETWEEN e1.hire_date - 30 AND e1.hire_date
	) AS pay_pattern
FROM employees e1
ORDER BY hire_date;

--=====================================================================================
-- Views

-- Create a view of all employees who work in the US
CREATE VIEW us_employees AS
SELECT *
FROM employees
WHERE coffeeshop_id IN (
    SELECT coffeeshop_id
    FROM shops
    WHERE city_id IN (
        SELECT city_id
        FROM locations
        WHERE country = 'United States'
    )
);

-- Create a view of all employees who work in the Unite Kingdom
CREATE VIEW uk_employees AS
SELECT *
FROM employees
WHERE coffeeshop_id IN (
    SELECT coffeeshop_id
    FROM shops
    WHERE city_id IN (
        SELECT city_id
        FROM locations
        WHERE country = 'United Kingdom'
    )
);

-- Create a view of all the US coffee shops
CREATE VIEW us_shops AS
SELECT *
FROM shops
WHERE city_id IN (
    SELECT city_id
    FROM locations
    WHERE country = 'United States'
);

-- Create a view of all the UK coffee shops
CREATE VIEW uk_shops AS
SELECT *
FROM shops
WHERE city_id IN (
    SELECT city_id
    FROM locations
    WHERE country = 'United Kingdom'
);

-- Create a view of all the US suppliers
CREATE VIEW us_suppliers AS
SELECT *
FROM suppliers
WHERE coffeeshop_id IN (
    SELECT coffeeshop_id
    FROM shops
    WHERE city_id IN (
        SELECT city_id
        FROM locations
        WHERE country = 'United States'
    )
);

-- Create a view of all the UK suppliers
CREATE VIEW uk_suppliers AS
SELECT *
FROM suppliers
WHERE coffeeshop_id IN (
    SELECT coffeeshop_id
    FROM shops
    WHERE city_id IN (
        SELECT city_id
        FROM locations
        WHERE country = 'United Kingdom'
    )
);



--=====================================================================================
-- Indexes

-- Create an index on the employee_id column
CREATE INDEX idx_employee_id
ON employees(employee_id);

-- Create an index on the first_name column
CREATE INDEX idx_first_name
ON employees(first_name);

-- Create an index on the last_name column
CREATE INDEX idx_last_name
ON employees(last_name);

-- Create an index on the hire_date column
CREATE INDEX idx_hire_date
ON employees(hire_date);

-- Create an index on the salary column
CREATE INDEX idx_salary
ON employees(salary);

-- Create an index of the coffeeshop_id column
CREATE INDEX idx_coffeeshop_id
ON employees(coffeeshop_id);

-- Create an index on the email column
CREATE INDEX idx_email
ON employees(email);

-- Create an index on the city_id column
CREATE INDEX idx_city_id
ON locations(city_id);

-- Create an index on the city column
CREATE INDEX idx_city
ON locations(city);
