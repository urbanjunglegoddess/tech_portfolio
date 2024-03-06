SELECT
	*
FROM
	covid_deaths cd;

SELECT
	*
FROM
	covid_vaccinations cv 

	
SELECT
	*
FROM
	covid_deaths
WHERE
	continent IS NOT NULL

	-- Select Data that we are going to be starting with

SELECT
	Location,
	date,
	total_cases,
	new_cases,
	total_deaths,
	population
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
ORDER BY
	1,
	2
	
	

	-- Shows likelihood of dying if you contract covid in your country

SELECT
	Location,
	date,
	total_cases,
	total_deaths,
	(
		total_deaths / total_cases
	)* 100 AS DeathPercentage
FROM
	covid_deaths
WHERE
	location LIKE '%states%'
	AND continent IS NOT NULL
ORDER BY
	1,
	2
	
	-- Analyze the average number of new deaths per day for each continent
SELECT continent, AVG(new_deaths) as AverageNewDeaths
FROM covid_deaths
WHERE continent IS NOT NULL 
GROUP BY continent;

	
	-- Shows what percentage of population infected with Covid

SELECT
	Location,
	date,
	Population,
	total_cases,
	(
		total_cases / population
	)* 100 AS PercentPopulationInfected
FROM
	covid_deaths
	-- WHERE location like '%states%'
ORDER BY
	1,
	2
	
	
	-- Countries with Highest Infection Rate compared to Population

SELECT
	Location,
	Population,
	MAX(total_cases) AS HighestInfectionCount,
	Max((total_cases / population))* 100 AS PercentPopulationInfected
FROM
	covid_deaths
	-- WHERE location like '%states%'
GROUP BY
	Location,
	Population
ORDER BY
	PercentPopulationInfected DESC
	
	
	-- Countries with Highest Death Count per Population

SELECT
	Location,
	MAX(CAST(Total_deaths AS int)) AS TotalDeathCount
FROM
	covid_deaths
-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL
GROUP BY
	Location
ORDER BY
	TotalDeathCount DESC
	
	
	-- Compare the total deaths and total vaccinations for each country
SELECT
	d.Location,
	d.total_deaths,
	v.total_vaccinations
FROM
	covid_deaths d
JOIN covid_vaccinations v ON
	d.Location = v.Location
	AND d.date = v.date
WHERE
	d.continent IS NOT NULL;
-- Showing contintents with the highest death count per population
SELECT
	continent,
	MAX(CAST(Total_deaths AS int)) AS TotalDeathCount
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL
GROUP BY
	continent
ORDER BY
	TotalDeathCount DESC
	-- GLOBAL NUMBERS

SELECT
	SUM(new_cases) AS total_cases,
	SUM(CAST(new_deaths AS int)) AS total_deaths,
	SUM(CAST(new_deaths AS int))/ SUM(New_Cases)* 100 AS DeathPercentage
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL 
--
GROUP BY
	date
ORDER BY
	1,
	2
	-- Identify countries with the highest death count per day
SELECT
	Location,
	date,
	MAX(new_deaths) AS HighestDailyDeathCount
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
GROUP BY
	Location,
	date
ORDER BY
	HighestDailyDeathCount DESC;
-- Calculate the case fatality rate (CFR) for each country, representing the percentage of confirmed cases that result in death
SELECT
	Location,
	date,
	total_cases,
	total_deaths,
	(
		total_deaths / total_cases
	) * 100 AS CaseFatalityRate
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
ORDER BY
	Location,
	date;
-- Calculate the average number of new cases per day for each continent
SELECT
	continent,
	AVG(new_cases) AS AverageNewCases
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
GROUP BY
	continent;
-- Analyze the daily change in new cases for each country
SELECT
	Location,
	date,
	new_cases,
	new_cases - LAG(new_cases) OVER (
		PARTITION BY Location
	ORDER BY
		date
	) AS DailyCaseChange
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
ORDER BY
	Location,
	date;

	-- Determine the countries with the highest vaccination rates (percentage of population fully vaccinated)
SELECT
	Location,
	MAX(total_vaccinations) AS HighestVaccinationCount,
	(
		MAX(total_vaccinations) / population
	) * 100 AS VaccinationRate
FROM
	covid_vaccinations
WHERE
	location NOT LIKE '%World%'
GROUP BY
	Location,
	population
ORDER BY
	VaccinationRate DESC;

	-- Calculate the percentage of population vaccinated in each country
SELECT
	d.Location,
	v.total_vaccinations,
	(
		v.total_vaccinations / d.population
	) * 100 AS VaccinationPercentage
FROM
	covid_deaths d
JOIN covid_vaccinations v ON
	d.Location = v.Location
	AND d.date = v.date
WHERE
	d.continent IS NOT NULL;

	-- Analyze the trend of new cases over time for a specific country
SELECT
	Location,
	date,
	new_cases
FROM
	covid_deaths
WHERE
	Location = 'United States'
ORDER BY
	date;


	-- Shows Percentage of Population that has recieved at least one Covid Vaccine

SELECT
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations
,
	SUM(CONVERT(int, vac.new_vaccinations)) OVER (
		PARTITION BY dea.Location
	ORDER BY
		dea.location,
		dea.Date
	) AS RollingPeopleVaccinated
--,
	(
		RollingPeopleVaccinated / population
	)* 100
FROM
	covid_deaths dea
JOIN covid_vaccinations vac
	ON
	dea.location = vac.location
	AND dea.date = vac.date
WHERE
	dea.continent IS NOT NULL
ORDER BY
	2,
	3
	
	-- Determine the countries with the highest testing rates, measured by the number of tests conducted per million population
SELECT
	Location,
	MAX(tests_per_million) AS HighestTestingRate
FROM
	covid_deaths
WHERE
	continent IS NOT NULL
GROUP BY
	Location
ORDER BY
	HighestTestingRate DESC;
	
-- Calculate the recovery rate for each country, representing the percentage of confirmed cases that result in recovery
SELECT
   Location,
   date,
   total_cases,
   total_deaths,
   total_recovered,
    (
      total_recovered / total_cases
   ) * 100 AS RecoveryRate
FROM
   covid_deaths
WHERE
   continent IS NOT NULL
ORDER BY
   Location,
   date;

-- Using CTE to perform Calculation on Partition By in previous query

WITH PopvsVac (
		Continent,
		Location,
		Date,
		Population,
		New_Vaccinations,
		RollingPeopleVaccinated
)
AS
(
	SELECT
			dea.continent,
			dea.location,
			dea.date,
			dea.population,
			vac.new_vaccinations
,
			SUM(CONVERT(int, vac.new_vaccinations)) OVER (
				PARTITION BY dea.Location
		ORDER BY
				dea.location,
				dea.Date
		) AS RollingPeopleVaccinated
--,
			(
				RollingPeopleVaccinated / population
		)* 100
	FROM
			covid_deaths dea
	JOIN covid_vaccinations vac
	ON
			dea.location = vac.location
		AND dea.date = vac.date
	WHERE
			dea.continent IS NOT NULL 
--
	ORDER BY
		2,
			3
)
SELECT
	*,
	(
		RollingPeopleVaccinated / Population
	)* 100
FROM
	PopvsVac
	-- Using Temp Table to perform Calculation on Partition By in previous query

DROP TABLE IF EXISTS
	#PercentPopulationVaccinated
CREATE TABLE
	#PercentPopulationVaccinated
(
		Continent nvarchar(255),
		Location nvarchar(255),
		Date datetime,
		Population NUMERIC,
		New_vaccinations NUMERIC,
		RollingPeopleVaccinated NUMERIC
	)

INSERT
	INTO
	#PercentPopulationVaccinated
SELECT
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations
,
	SUM(CONVERT(int, vac.new_vaccinations)) OVER (
		PARTITION BY dea.Location
	ORDER BY
		dea.location,
		dea.Date
	) AS RollingPeopleVaccinated
--,
	(
		RollingPeopleVaccinated / population
	)* 100
FROM
	covid_deaths dea
JOIN covid_vaccinations vac
	ON
	dea.location = vac.location
	AND dea.date = vac.date
	-- WHERE dea.continent is not null 
--
ORDER BY
	2,
	3
	
	SELECT
	*,
	(
		RollingPeopleVaccinated / Population
	)* 100
FROM
	#PercentPopulationVaccinated
	-- Creating View to store data for later visualizations

CREATE VIEW PercentPopulationVaccinated AS
SELECT
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations
,
	SUM(CONVERT(int, vac.new_vaccinations)) OVER (
		PARTITION BY dea.Location
	ORDER BY
		dea.location,
		dea.Date
	) AS RollingPeopleVaccinated
--,
	(
		RollingPeopleVaccinated / population
	)* 100
FROM
	covid_deaths dea
JOIN covid_vaccinations vac
	ON
	dea.location = vac.location
	AND dea.date = vac.date
WHERE
	dea.continent IS NOT NULL
	-- 1. 

SELECT
	SUM(new_cases) AS total_cases,
	SUM(CAST(new_deaths AS int)) AS total_deaths,
	SUM(CAST(new_deaths AS int))/ SUM(New_Cases)* 100 AS DeathPercentage
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL 
--
GROUP BY
	date
ORDER BY
	1,
	2
	-- Just a double check based off the data provided
	-- numbers are extremely close so we will keep them - The Second includes "International"  Location


-
-SELECT
	SUM(new_cases) AS total_cases,
	SUM(CAST(new_deaths AS int)) AS total_deaths,
	SUM(CAST(new_deaths AS int))/ SUM(New_Cases)* 100 AS DeathPercentage
--
FROM
	covid_deaths
--
	-- WHERE location like '%states%'
	-- WHERE location = 'World'
----
GROUP BY
	date
--
ORDER BY
	1,
	2
	-- We take these out as they are not inluded in the above queries and want to stay consistent
	-- European Union is part of Europe

SELECT
	location,
	SUM(CAST(new_deaths AS int)) AS TotalDeathCount
FROM
	covid_deaths
	-- Where location like '%states%'
WHERE
	continent IS NULL
	AND location NOT IN (
		'World', 'European Union', 'International'
	)
GROUP BY
	location
ORDER BY
	TotalDeathCount DESC
	-- 3.

SELECT
	Location,
	Population,
	MAX(total_cases) AS HighestInfectionCount,
	Max((total_cases / population))* 100 AS PercentPopulationInfected
FROM
	covid_deaths cd
	-- Where location like '%states%'
GROUP BY
	Location,
	Population
ORDER BY
	PercentPopulationInfected DESC
	-- 4.


SELECT
	Location,
	Population,
	date,
	MAX(total_cases) AS HighestInfectionCount,
	Max((total_cases / population))* 100 AS PercentPopulationInfected
FROM
	covid_deaths
	-- Where location like '%states%'
GROUP BY
	Location,
	Population,
	date
ORDER BY
	PercentPopulationInfected DESC
	-- Queries I originally had, but excluded some because it created too long of video
	-- Here only in case you want to check them out
	-- 1.

SELECT
	dea.continent,
	dea.location,
	dea.date,
	dea.population
,
	MAX(vac.total_vaccinations) AS RollingPeopleVaccinated
--,
	(
		RollingPeopleVaccinated / population
	)* 100
FROM
	covid_deaths dea
JOIN covid_vaccinations vac
	ON
	dea.location = vac.location
	AND dea.date = vac.date
WHERE
	dea.continent IS NOT NULL
GROUP BY
	dea.continent,
	dea.location,
	dea.date,
	dea.population
ORDER BY
	1,
	2,
	3
	-- 2.
SELECT
	SUM(new_cases) AS total_cases,
	SUM(CAST(new_deaths AS int)) AS total_deaths,
	SUM(CAST(new_deaths AS int))/ SUM(New_Cases)* 100 AS DeathPercentage
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL 
--
GROUP BY
	date
ORDER BY
	1,
	2
	-- Just a double check based off the data provided
	-- numbers are extremely close so we will keep them - The Second includes "International"  Location


-
-SELECT
	SUM(new_cases) AS total_cases,
	SUM(CAST(new_deaths AS int)) AS total_deaths,
	SUM(CAST(new_deaths AS int))/ SUM(New_Cases)* 100 AS DeathPercentage
--
FROM
	covid_deaths
--
	-- WHERE location like '%states%'
	-- WHERE location = 'World'
----
GROUP BY
	date
--
ORDER BY
	1,
	2
	-- 3.
	-- We take these out as they are not inluded in the above queries and want to stay consistent
	-- European Union is part of Europe

SELECT
	location,
	SUM(CAST(new_deaths AS int)) AS TotalDeathCount
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NULL
	AND location NOT IN (
		'World', 'European Union', 'International'
	)
GROUP BY
	location
ORDER BY
	TotalDeathCount DESC
	-- 4.

SELECT
	Location,
	Population,
	MAX(total_cases) AS HighestInfectionCount,
	Max((total_cases / population))* 100 AS PercentPopulationInfected
FROM
	covid_deaths
	-- WHERE location like '%states%'
GROUP BY
	Location,
	Population
ORDER BY
	PercentPopulationInfected DESC
	-- 5.

-
-SELECT
	Location,
	date,
	total_cases,
	total_deaths,
	(
		total_deaths / total_cases
	)* 100 AS DeathPercentage
--
FROM
	covid_deaths
--
	-- WHERE location like '%states%'
	-- WHERE continent is not null 
--
ORDER BY
	1,
	2
	-- took the above query and added population
SELECT
	Location,
	date,
	population,
	total_cases,
	total_deaths
FROM
	covid_deaths
	-- WHERE location like '%states%'
WHERE
	continent IS NOT NULL
ORDER BY
	1,
	2
	-- 6. 


WITH PopvsVac (
		Continent,
		Location,
		Date,
		Population,
		New_Vaccinations,
		RollingPeopleVaccinated
	)
AS
(
		SELECT
			dea.continent,
			dea.location,
			dea.date,
			dea.population,
			vac.new_vaccinations
,
			SUM(CONVERT(int, vac.new_vaccinations)) OVER (
				PARTITION BY dea.Location
			ORDER BY
				dea.location,
				dea.Date
			) AS RollingPeopleVaccinated
--,
			(
				RollingPeopleVaccinated / population
			)* 100
		FROM
			covid_deaths dea
		JOIN covid_vaccinations vac
	ON
			dea.location = vac.location
			AND dea.date = vac.date
		WHERE
			dea.continent IS NOT NULL 
--
		ORDER BY
			2,
			3
	)
SELECT
	*,
	(
		RollingPeopleVaccinated / Population
	)* 100 AS PercentPeopleVaccinated
FROM
	PopvsVac
	-- 7. 

SELECT
	Location,
	Population,
	date,
	MAX(total_cases) AS HighestInfectionCount,
	Max((total_cases / population))* 100 AS PercentPopulationInfected
FROM
	covid_deaths
	-- WHERE location like '%states%'
GROUP BY
	Location,
	Population,
	date
ORDER BY
	PercentPopulationInfected DESC
