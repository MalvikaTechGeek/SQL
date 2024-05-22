USE people;

-- FUNCTION 1 : ROUND
-- 'ROUND' function is used for rounding a Number 

SELECT ROUND(4.6);

-- if the decimal value is >= 0.5 'ROUND' converts it into the closest greater number ,
-- if the decimal value is < 0.5 'ROUND' converts it into the closest least number .

-- 'ROUND' function also has an additional parameters called 'precision'
 
 SELECT ROUND(4.356,2);
 
 -- ----------------------------------------------------------------------------------
 
 -- FUNCTION 2 : TRUNCATE
 -- 'TRUNCATE' function is used to remove the digits in decimal value after the precision
 
 SELECT TRUNCATE(4.356,2)
 
 -- keep the digits in decimal till 2 place and truncate/remove the rest 
 
 -- ------------------------------------------------------------------------------
 
 -- FUNCTION 3 : CEILING
 -- 'CEILING' returns the smallest integer that is greater than or equal to a given number 
 
SELECT CEILING(4.3);

-- ------------------------------------------------------------------------------------

-- FUNCTION 4 : FLOOR 
-- 'FLOOR' is exact oppose to 'CEILING'
-- 'FLOOR' returns the largest integer that is smaller than or equal to a given number

SELECT FLOOR(4.6);

-- -----------------------------------------------------------------------------------

-- FUNCTION 4 : ABS 
-- 'ABS' stands for 'ABSOLUTE' value
-- 'ABS' function returns , positive version of the number you get it 

SELECT ABS(10);
SELECT ABS(-10);

-- ------------------------------------------------------------------------

-- FUNCTION 5 : RAND
-- 'RAND' function returns a random floating point value between the range 0 to 1

SELECT RAND();

-- Exercise
-- Fetch id , first_name , last_name , salary of the person from citizens table
-- where the salary field should be rounded to 1 decimal point 

SELECT id, first_name, last_name, ROUND(salary , 1) as salary
FROM Citizen;

-- Challenge 
-- Write an SQL query to fetch id , first_name , last_name , salary of the person
-- from citizens table where the salary field should be CEILED

SELECT id, first_name , last_name , CEILING(salary) as salary
FROM Citizen;


 