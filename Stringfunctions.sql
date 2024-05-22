USE people;

-- FUNCTION 1 : UPPER 
-- 'UPPER' , as the name suggests its going to upper case all your characters you pass into it 

SELECT UPPER("dhoni");

-- FUNCTION 2 : LOWER
-- 'LOWER' lower cases all the characters

SELECT LOWER("Dhoni");

-- FUNCTION 3 : LENGTH 
-- 'LENGTH' finds out the length of the given string

SELECT LENGTH("Kholi");

/*
FUNCTION 4 : LEFT 
'LEFT' is used to return a spicified number of characters from the left of the string 
Takes in 2 args
1. String. 
2. An Integer which determines the characters upto which it should return from left 
*/

SELECT LEFT("Sachin" , 3);

-- FUNCTION 5 : RIGHT 
-- 'RIGHT' is used to to return a spicified number of characters from the right of the string.

SELECT RIGHT("Sachin" , 3);

-- FUNCTION 6 : SUBSTRING 
-- The 'SUBSTRING' function extracts a substring from a given string 
-- 3 args 
-- 1. String
-- 2. Start position 
-- 3. Length of Substring 

SELECT substring("Sachin Tendulkar" , 8 , 9);

SELECT substring("Sachin Tendulkar" , 8);

-- FUNCTION 7 : LTRIM 
-- The 'LTRIM' function removes all the spaces to the LEFT of the string 

SELECT LTRIM("  Kapil");

-- FUNCTION 8 : RTRIM
-- The 'RTRIM' function removes all the spaces to the RIGHT of the string 

SELECT RTRIM("Kapil   ");

-- FUNCTION 9 : TRIM
-- The 'TRIM' function removes all the spaces to the left and right of the string 

SELECT TRIM("     Kapil      ");

-- FUNCTION 10 : LOCATE 
-- The 'LOCATE' function returns the position of the first occurrence of a substring in a string 
-- 2 args , 
-- 1. Substring
-- 2. Original string 

SELECT LOCATE("Tendulkar" , "Sachin Tendulkar");

-- FUNCTION 11 : REPLACE 
-- "REPLACE" function replaces all the occurrences of a substring within a string 
-- 3 args ,
--    1. Original string 
--    2. Substring which we want to replace 
--    3. Subtring to be replaced with 

SELECT REPLACE("I am Sql programmer" , "I am" , "you are");
--  The result is "you are Sql programmer"
