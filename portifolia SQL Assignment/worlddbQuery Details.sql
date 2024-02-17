use world;
select count(distinct(name)) from city where countryCode='USA';
-- Task1 --

/* Find out what the population and average life 
expectancy for people in Argentina (ARG) is */

desc city;
desc country;
select population,lifeExpectancy from country where code='ARG';
-- Task2 --
/*using ORDER BY, LIMIT, what country has the 
highest life expectancy*/

select name,code, population,lifeExpectancy from country WHERE lifeexpectancy IS NOT NULL order by lifeExpectancy desc limit 1;
SELECT name FROM city WHERE SUBSTRING(name,1,1) = 'F' LIMIT 25;
-- Task3 --
/* Create a SQL statement to display 
columns Id, Name, Population from the city table and 
limit results to first 10 rows only */

select ID,Name,population from city limit 10;

-- Task4 --

/*•Create a SQL statement to find only those cities 
from city table whose population is larger 
than 2000000 */

select Name,Population from city where Population>2000000;

-- Task5 --

/*Create a SQL statement to find all city names 
from city table whose name begins with “Be” 
prefix */

SELECT Name FROM city WHERE Name LIKE 'Be%';

-- Task6 --
/* Create a SQL statement to find only those cities 
from city table whose population is between 
500000-1000000 */

select Name, Population FROM city WHERE Population BETWEEN 500000 AND 1000000;

-- Task7 --
/* Create a SQL statement to find a city with the 
lowest population in the city table */

SELECT Population, Name FROM country WHERE Population IS NOT NULL ORDER BY Population ASC LIMIT 1;

-- Task8 --

/*Create a SQL statement to find the capital of Spain (ESP).*/

SELECT city.Name FROM city LEFT JOIN country ON city.ID = country.Capital WHERE city.CountryCode = "ESP";
-- Task9 --
/* Create a SQL statement to find all cities from the Europe 
continent.*/

SELECT city.Name FROM city LEFT JOIN country ON city.CountryCode = country.Code WHERE country.Continent = "Europe";
-- Task10 --
/*Create a SQL statement to list all the languages spoken in the 
Caribbean region.*/

SELECT country.Region, countrylanguage.Language FROM country
LEFT JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE country.Region = "Caribbean";



