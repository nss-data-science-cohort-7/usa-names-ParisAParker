-- Question 1: 1957046 rows
SELECT *
FROM names;

-- Question 2: 351653025 registered people
SELECT SUM(num_registered) as sum
FROM names;

-- Question 3: James
SELECT name, SUM(num_registered)
FROM names
GROUP BY name
ORDER BY sum DESC;

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

-- Question 7: 