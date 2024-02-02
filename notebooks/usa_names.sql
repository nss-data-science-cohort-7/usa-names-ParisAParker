-- Question 1: 1957046 rows
SELECT *
FROM names;

-- Question 2: 351653025 registered people
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

-- Question 6: 98400 distinct names
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
SELECT name, sum(num_registered)
FROM names
WHERE year BETWEEN 2000 AND 2009
AND gender = 'M'
GROUP BY name
ORDER BY sum DESC;

SELECT name, sum(num_registered)
FROM names
WHERE year BETWEEN 2000 AND 2009
AND gender = 'F'
GROUP BY name
ORDER BY sum DESC;

-- Question 10: 2008
SELECT COUNT(DISTINCT name), year
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

-- Question 12: 
SELECT DISTINCT name
FROM names

