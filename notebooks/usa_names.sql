-- Question 1: 1,957,046 rows
SELECT *
FROM names;

-- Question 2: 351,653,025 registered people
SELECT SUM(num_registered) as sum
FROM names;

-- Question 3: Linda
SELECT name, num_registered, year
FROM names
ORDER BY num_registered DESC;

-- Question 4: 1880 - 2018
SELECT MIN(year), MAX(year)
FROM names;

-- Question 5: 1880
SELECT year, SUM(num_registered)
FROM names
GROUP BY year;

-- Question 6: 98,400 distinct names
SELECT DISTINCT name
FROM names;

-- Question 7: More males registered
SELECT gender, SUM(num_registered)
FROM names
GROUP BY gender;

-- Question 8: Top female names are Mary, Elizabeth, and Patricia & Top male names are James, John, Robert
SELECT name, sum(num_registered)
FROM names
WHERE gender = 'F'
GROUP BY name
ORDER by sum DESC
LIMIT 5;

SELECT name, sum(num_registered)
FROM names
WHERE gender = 'M'
GROUP BY name
ORDER BY sum DESC
LIMIT 5;

-- Question 9: Jacob & Emily
SELECT name, gender, sum(num_registered)
FROM names
WHERE year BETWEEN 2000 AND 2009
GROUP BY name, gender
ORDER BY sum DESC;

-- Question 10: 2008
SELECT year, COUNT(DISTINCT name)
FROM names
GROUP BY year
ORDER BY count DESC;

-- Question 11: Ximena
SELECT name, sum(num_registered)
FROM names
WHERE gender = 'F'
AND name LIKE 'X%'
GROUP BY name
ORDER BY sum DESC;

-- Question 12: 46 names
SELECT COUNT(DISTINCT name)
FROM names
WHERE name LIKE 'Q%'
	AND name NOT LIKE '_u%';

-- Question 13: Stephen is more popular
SELECT name, COUNT(name)
FROM names
WHERE name = 'Stephen'
	OR name = 'Steven'
GROUP BY name;

-- Question 14: (10773/98400) * 100 = 10.9 %
SELECT DISTINCT name
FROM names
WHERE gender = 'M'
	OR gender = 'F';
	
SELECT name, COUNT(DISTINCT gender)
FROM names
GROUP BY name
HAVING COUNT(DISTINCT gender) > 1

-- Question 15: 921 names
SELECT name, COUNT(DISTINCT year) AS count_years
FROM names
GROUP BY name
HAVING COUNT(DISTINCT year) = 139;

-- Question 16: 21,123 names
SELECT name, COUNT(DISTINCT year) AS count_years
FROM names
GROUP BY name
HAVING COUNT(DISTINCT year) = 1;

-- Question 17: 661 names
SELECT name, MIN(year) AS min_year, MAX(year) AS max_year
FROM names
GROUP BY name
HAVING MIN(year) >= 1950 
	AND MAX(year) <= 1959

-- Question 18: 11,270 names
SELECT name, MIN(year) AS min_year, MAX(year) AS max_year
FROM names
GROUP BY name
HAVING MIN(year) >= 2010

-- Question 19: Roll
SELECT name, MAX(year) as max_year
FROM names
GROUP BY name
ORDER BY max_year ASC