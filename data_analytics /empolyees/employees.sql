CREATE TABLE IF NOT EXISTS employeedemographics(
    employeeid int PRIMARY KEY ,
    firstname varchar(50),
    lastname  varchar(50),
    age int,
    gender varchar(50)
);

CREATE TABLE IF NOT EXISTS employeesalary(
    employeeid int,
    jobtitle varchar(50),
    salary int,
     CONSTRAINT fk_employeeid
      FOREIGN KEY(employeeid)
      REFERENCES employeedemographics(employeeid)
);

Create Table IF NOT EXISTS warehouseemployees
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
);
-- INSERT INTO employeedemographics
-- VALUES (1001,'Jim', 'Halpart', 30, 'Male'),
--  (1002,'Pam','Beasley',30,'Female'),
--  (1003,'Dwight', 'Schrute', 29, 'Male'),
--  (1004,'Angela','Martin',31,'Female'),
--  (1005, 'Toby','Flenderson', 32, 'Male'),
--  (1006, 'Micheal','Scott',35,'Male'),
--  (1007, 'Meredith','Palmer', 32, 'Female'),
--  (1008, 'Stanley', 'Hudson', 38, 'Male'),
--  (1009, 'Kevin', 'Malone', 31, 'Male');

--  INSERT INTO employeesalary
--  VALUES
-- (1001, 'Salesman', 45000),
-- (1002, 'Receptionist', 36000),
-- (1003, 'Salesman', 63000),
-- (1004, 'Accountant', 47000),
-- (1005, 'HR', 50000),
-- (1006, 'Regional Manager', 65000),
-- (1007, 'Supplier Relations', 41000),
-- (1008, 'Salesman', 48000),
-- (1009, 'Accountant', 42000);

-- Insert into warehouseemployees VALUES
-- (1013, 'Darryl', 'Philbin', NULL, 'Male'),
-- (1050, 'Roy', 'Anderson', 31, 'Male'),
-- (1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
-- (1052, 'Val', 'Johnson', 31, 'Female')
--
-- Insert into employeedemographics
-- VALUES
-- (1011, 'Ryan', 'Howard', 26, 'Male'),
-- (1012, 'Holly', 'Flax', NULL, NULL),
-- (1013, 'Darryl', 'Philbin', NULL, 'Male')

SELECT *
FROM employeedemographics e;

SELECT firstname
FROM employeedemographics e;

SELECT firstname, lastname
FROM employeedemographics e;

SELECT *
FROM employeedemographics e
ORDER BY age DESC
LIMIT 5;

SELECT DISTINCT (employeeid)
FROM employeedemographics e;

SELECT DISTINCT (gender)
FROM employeedemographics e;

SELECT COUNT(lastname) AS LastNameCount
FROm employeedemographics e;

SELECT MAX(salary)
FROM employeesalary es;

SELECT MIN(salary)
FROM employeesalary es;

SELECT AVG(salary)
FROM employeesalary es;

SELECT *
FROM employeedemographics e
WHERE firstname = 'Jim';

SELECT *
FROM employeedemographics e
WHERE firstname <> 'Jim';

SELECT *
FROM employeedemographics e
WHERE age = 30;

SELECT *
FROM employeedemographics e
WHERE age <=32 AND gender = 'Male';

SELECT *
FROM employeedemographics e
WHERE age <= 32 AND gender='Female';

SELECT *
FROM employeedemographics e
WHERE lastname LIKE 'S%';

SELECT *
FROM employeedemographics e
WHERE lastname LIKE '%S%';

SELECT *
FROM employeedemographics e
WHERE lastname LIKE 'S%ot%';

SELECT *
FROM employeedemographics e
WHERE lastname LIKE 'S%ot%c';

SELECT *
FROM employeedemographics e
WHERE lastname LIKE 'S%';

SELECT *
FROM employeedemographics e
WHERE firstname IS NULL;

SELECT  *
FROM employeedemographics e
WHERE firstname IS NOT NULL;

SELECT *
FROM employeedemographics e
WHERE firstname IN ('Jim', 'Micheal');

SELECT gender, COUNT(gender) AS Number
FROM employeedemographics e
GROUP BY gender;

SELECT gender, COUNT(gender) AS Number
FROM employeedemographics e
WHERE age > 30
GROUP BY gender
ORDER BY number;

SELECT *
FROM employeedemographics e
ORDER BY age, gender;

SELECT *
FROM employeedemographics e
ORDER BY age desc, gender desc;

SELECT *
FROM employeedemographics e
ORDER BY 4 desc, 5 desc;

SELECT ed.employeeid, firstname, lastname, jobtitle, salary
FROM employeedemographics ed
JOIN employeesalary es ON ed.employeeid = es.employeeid;

SELECT ed.employeeid, firstname, lastname, jobtitle, salary
FROM employeedemographics ed
RIGHT JOIN employeesalary es ON ed.employeeid = es.employeeid;

SELECT ed.employeeid, firstname, lastname, jobtitle, salary
FROM employeedemographics ed
LEFT OUTER JOIN employeesalary es ON ed.employeeid = es.employeeid;

SELECT ed.employeeid, firstname, lastname, jobtitle, salary
FROM employeedemographics ed
INNER JOIN employeesalary es ON ed.employeeid = es.employeeid
WHERE firstname <> 'Micheal'
ORDER BY salary desc;

SELECT jobtitle, avg(salary)
FROM employeedemographics ed
INNER JOIN employeesalary es ON ed.employeeid = es.employeeid
WHERE jobtitle = 'Salesman'
Group By jobtitle;

SELECT *
FROM  employeedemographics
Union
SELECT *
FROM  warehouseemployees;

SELECT EmployeeID, FirstName, Age
FROM  employeedemographics
Union
SELECT EmployeeID, JobTitle, Salary
FROM  employeesalary
ORDER BY EmployeeID;


SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE'Young'
END
FROM employeedemographics
WHERE Age is NOT NULL
ORDER BY Age;

SELECT firstname, lastname, age,
       CASE
            WHEN age > 30  THEN 'Old'
            WHEN age BETWEEN 27 AND 30 THEN 'Young'
            ELSE 'Baby'
END
FROM employeedemographics
WHERE age IS NOT NULL
ORDER BY age;

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM employeedemographics
WHERE age is NOT NULL
ORDER BY age;



SELECT firstname, lastname, age,
CASE

	WHEN age =38 THEN 'Stanely'
	WHEN age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM employeedemographics
WHERE age is NOT NULL
ORDER BY age;

SELECT firstname, lastname, jobtitle, salary,
CASE
	WHEN jobtitle = 'Salesman'THEN salary + (salary *.10)
	When jobtitle = 'Accountant' Then salary +(salary *.5)
	When jobtitle = 'HR' THEN salary + salary + (salary *.000001)
	ELSE salary + (salary *.03)
END AS salaryAfterRaise
FROM  employeedemographics
JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
	ORDER BY salaryAfterRaise DESC;

SELECT jobtitle, COUNT(jobtitle)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jobtitle;

SELECT jobtitle, COUNT(jobtitle)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jobtitle
HAVING COUNT(jobtitle) > 1;

SELECT jobtitle, AVG(salary)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jobtitle
HAVING AVG(salary) > 1;

UPDATE employeedemographics
SET employeeid=1012, age =31, gender ='Female'
WHERE firstname ='Holly' AND lastname = 'Flax';

DELETE FROM employeedemographics
WHERE employeeid =1005;

SELECT *
FROM employeedemographics;

SELECT firstname + ' ' + lastname AS Name
FROM employeedemographics;

SELECT AVG(age) AS Avgage
FROM employeedemographics;

SELECT Demo.EmployeID
FROM employeedemographics;

SELECT AVG(age) AS Avgage
FROM employeedemographics;

SELECT firstname + ' ' + lastname AS Name
FROM employeedemographics;

SELECT AVG(age) AS Avgage
FROM employeedemographics;

SELECT Demo.employeeid
FROM employeedemographics AS demo
JOIN employeedemographics AS sal
	ON Demo.employeeid = Sal.employeeid;

SELECT demo.employeeid, demo.firstname, demo.firstname, sal.jobtitle, warehouse.age
FROM employeedemographics demo
Left JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid
Left JOIN [SQL Tutorial].dbo.WareHouseemployeedemographics warehouse
	ON demo.employeeid =warehouse.employeeid;

SELECT firstname, lastname, gender, salary, COUNT(gender) OVER (PARTITION BY gender) AS Totalgender
FROM employeedemographics AS demo
JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid;


--CTE
WITH CTE_Employee AS
(
	SELECT firstname, lastname, gender, salary
	, COUNT(gender) OVER (PARTITION BY gender) AS Totalgender
	, AVG(salary) OVER (PARTITION BY gender) AS Avgsalary
	FROM employeedemographics AS demo
	JOIN employeesalary sal
		ON demo.employeeid = sal.employeeid
	WHERE salary > '45000'
	)
SELECT *
FROM CTE_Employee;

CREATE TABLE #temp_Employee(
EmlpoyeeId INT,
jobtitle VARCHAR(100),
salary INT
);

SELECT *
FROM #temp_Employee;

INSERT INTO #temp_Employee VALUES(
'1001','HR','4500')
);

INSERT INTO #temp_Employee
SELECT *
FROM employeesalary;

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
jobtitle VARCHAR(100),
EmployeesPerJob INT,
Avgage INT,
Avgsalary INT
);

INSERT INTO #Temp_Employee2
SELECT jobtitle, COUNT(jobtitle), Avg(age), Avg(salary)
FROM employeedemographics AS demo
JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid
GROUP BY jobtitle;

SELECT *
FROM #Temp_Employee2;

CREATE TABLE EmployeeErrors (
employeeid varchar(50)
,firstname varchar(50)
,lastname varchar(50)
);

Insert into EmployeeErrors Values
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired');

Select *
From EmployeeErrors;

-- Using Trim, LTRIM, RTRIM

Select employeeid, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors;
Select employeeid, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors;

Select employeeid, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors;

-- Using Replace

Select lastname, REPLACE(lastname, '- Fired', '') as lastnameFixed
FROM EmployeeErrors;


-- Using Substring

Select Substring(err.firstname,1,3), Substring(dem.firstname,1,3), Substring(err.lastname,1,3), Substring(dem.lastname,1,3)
FROM EmployeeErrors err
JOIN employeedemographics dem
	on Substring(err.firstname,1,3) = Substring(dem.firstname,1,3)
	and Substring(err.lastname,1,3) = Substring(dem.lastname,1,3);



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors;

Select Firstname, UPPER(firstname)
FROM EmployeeErrors;

CREATE PROCEDURE Temp_Employee AS
DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
jobtitle varchar(100),
EmployeesPerJob int ,
Avgage int,
Avgsalary int
);


Insert into #temp_employee
SELECT jobtitle, Count(jobtitle), Avg(age), AVG(salary)
FROM employeedemographics emp
JOIN employeesalary sal
	ON emp.employeeid = sal.employeeid
group by jobtitle;

Select *
From #temp_employee
GO;

CREATE PROCEDURE Temp_Employee2
@jobtitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee3
Create table #temp_employee3 (
jobtitle varchar(100),
EmployeesPerJob int ,
Avgage int
Avgsalary int
);


Insert into temp_employee3
SELECT jobtitle, Count(jobtitle), Avg(age), AVG(salary)
FROM employeedemographics emp
JOIN employeesalary sal
	ON emp.employeeid = sal.employeeid
where jobtitle = @jobtitle --- make sure to change this in this script from original above
group by jobtitle;

Select *
From #temp_employee3
GO;


exec Temp_Employee2 @jobtitle = 'Salesman'
exec Temp_Employee2 @jobtitle = 'Accountant'