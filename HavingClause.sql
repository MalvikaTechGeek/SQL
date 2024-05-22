USE people;

-- Q1. fetch all the country names and their average salaries of citizens whose average salary should be greater than 300000 units. 

SELECT country , AVG(salary)
FROM Citizen
WHERE AVG(salary) > 300000
GROUP BY country; 

-- Let`s solve the same challenge by using "HAVING"

SELECT country , AVG(salary) as avg_salary
FROM Citizen
GROUP BY country
HAVING AVG(salary) > 300000
ORDER BY 2;

/*
Challenge 
fetch the gender and their respective average salary from the citizen table whose average salary should be
 greater than 400000 units and all the records are to be sorted in descending order. 
*/

SELECT gender , AVG(salary) as avg_salary
FROM Citizen
GROUP BY gender
HAVING AVG(salary) > 400000
ORDER BY 2 DESC; 
