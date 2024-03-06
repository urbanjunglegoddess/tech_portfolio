

SELECT firstname, lastname, age,
CASE

	WHEN age =38 THEN 'Stanely'
	WHEN age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM employeedemographics
WHERE age is NOT NULL
ORDER BY age

SELECT firstname, lastname, jottitle, salary,
CASE
	WHEN jottitle = 'Salesman'THEN salary + (salary *.10)
	When jottitle = 'Accountant' Then salary +(salary *.5)
	When jottitle = 'HR' THEN salary + salary + (salary *.000001)
	ELSE salary + (salary *.03)
END AS salaryAfterRaise
FROM  employeedemographics
JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
	ORDER BY salaryAfterRaise DESC

SELECT jottitle, COUNT(jottitle)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jottitle

SELECT jottitle, COUNT(jottitle)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jottitle
HAVING COUNT(jottitle) > 1

SELECT jottitle, AVG(salary)
FROM  employeedemographics
 JOIN employeesalary
	ON employeedemographics.employeeid = employeesalary.employeeid
GROUP BY jottitle
HAVING AVG(salary) > 1

UPDATE employeedemographics
SET employeeid=1012, age =31, gender ='Female'
WHERE firstname ='Holly' AND lastname = 'Flax'

DELETE FROM employeedemographics
WHERE employeeid =1005

SELECT *
FROM employeedemographics

SELECT firstname + ' ' + lastname AS Name
FROM employeedemographics

SELECT AVG(age) AS Avgage
FROM employeedemographics

SELECT Demo.EmployeID
FROM employeedemographics

SELECT AVG(age) AS Avgage
FROM employeedemographics

SELECT firstname + ' ' + lastname AS Name
FROM employeedemographics

SELECT AVG(age) AS Avgage
FROM employeedemographics

SELECT Demo.employeeid
FROM employeedemographics AS demo
JOIN employeedemographics AS sal
	ON Demo.employeeid = Sal.employeeid

SELECT demo.employeeid, demo.firstname, demo.firstname, sal.jottitle, warehouse.age
FROM employeedemographics demo
Left JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid
Left JOIN [SQL Tutorial].dbo.WareHouseemployeedemographics warehouse
	ON demo.employeeid =warehouse.employeeid

SELECT firstname, lastname, gender, salary, COUNT(gender) OVER (PARTITION BY gender) AS Totalgender
FROM employeedemographics AS demo
JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid


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
FROM CTE_Employee

CREATE TABLE #temp_Employee(
EmlpoyeeId INT,
jottitle VARCHAR(100),
salary INT
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES(
'1001','HR','4500')
)

INSERT INTO #temp_Employee
SELECT *
FROM employeesalary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
jottitle VARCHAR(100),
EmployeesPerJob INT,
Avgage INT,
Avgsalary INT
)

INSERT INTO #Temp_Employee2
SELECT jottitle, COUNT(jottitle), Avg(age), Avg(salary)
FROM employeedemographics AS demo
JOIN employeesalary sal
	ON demo.employeeid = sal.employeeid
GROUP BY jottitle

SELECT *
FROM #Temp_Employee2

CREATE TABLE EmployeeErrors (
employeeid varchar(50)
,firstname varchar(50)
,lastname varchar(50)
)

Insert into EmployeeErrors Values
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select employeeid, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors

Select employeeid, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors

Select employeeid, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors

-- Using Replace

Select lastname, REPLACE(lastname, '- Fired', '') as lastnameFixed
FROM EmployeeErrors


-- Using Substring

Select Substring(err.firstname,1,3), Substring(dem.firstname,1,3), Substring(err.lastname,1,3), Substring(dem.lastname,1,3)
FROM EmployeeErrors err
JOIN employeedemographics dem
	on Substring(err.firstname,1,3) = Substring(dem.firstname,1,3)
	and Substring(err.lastname,1,3) = Substring(dem.lastname,1,3)



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(firstname)
FROM EmployeeErrors

CREATE PROCEDURE Temp_Employee
AS
DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
jottitle varchar(100),
EmployeesPerJob int ,
Avgage int,
Avgsalary int
)


Insert into #temp_employee
SELECT jottitle, Count(jottitle), Avg(age), AVG(salary)
FROM SQLTutorial..employeedemographics emp
JOIN SQLTutorial..employeesalary sal
	ON emp.employeeid = sal.employeeid
group by jottitle

Select *
From #temp_employee
GO;




CREATE PROCEDURE Temp_Employee2
@jottitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee3
Create table #temp_employee3 (
jottitle varchar(100),
EmployeesPerJob int ,
Avgage int,
Avgsalary int
)


Insert into #temp_employee3
SELECT jottitle, Count(jottitle), Avg(age), AVG(salary)
FROM SQLTutorial..employeedemographics emp
JOIN SQLTutorial..employeesalary sal
	ON emp.employeeid = sal.employeeid
where jottitle = @jottitle --- make sure to change this in this script from original above
group by jottitle

Select *
From #temp_employee3
GO;








exec Temp_Employee2 @jobtitle = 'Salesman'
exec Temp_Employee2 @jobtitle = 'Accountant'