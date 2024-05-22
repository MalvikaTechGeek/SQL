USE people;

-- Challange 1 : using the 'citizen' table inside 'people' database , retrieve the highest salary

SELECT MAX(salary)
FROM Citizen;

-- Challange 2 : retreive the records of top 5 highest salaries in the citizen table

SELECT *
FROM Citizen
ORDER BY salary DESC
LIMIT 5;

-- Challenge 3 : retreive the records of top 5 least salaries of citizens from Country 'CHINA'

SELECT name, salary, country
FROM citizens
WHERE country = 'CHINA'
ORDER BY salary
LIMIT 5;

-- Challenge 4 : retrieve all the names of all countries inside citizens table 

SELECT DISTINCT(country) AS 'countries'
FROM citizen;


 