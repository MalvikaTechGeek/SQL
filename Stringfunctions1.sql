USE people;

-- Q1. Fetch id , first_name and phone number from citizens table . first_name should be shown in capital in result set 

SELECT id , UPPER(first_name) as first_name, phone
FROM Citizen;

-- Q2. Fetch id , last_name and phone number from citizens table . last_name should be shown in Lowercase in result set 

SELECT id , LOWER(last_name) as last_name, phone
FROM Citizen;

-- Q3. Fetch id , first_name and length of first_name from Citizens table ,
-- note that the records are to be sorted in descending order according to length of first_name

SELECT id , first_name , LENGTH(first_name) as name_length
FROM Citizen
ORDER BY 3 DESC;

-- Q4. Fetch id , first four characters of first_name , last four characters of last_name from the citizens table 

SELECT id , 
LEFT(first_name, 4) as first_name, 
RIGHT(last_name, 4) as last_name
FROM Citizen;

-- Q5. Fetch id , full_name from citizen table . here the first_name is concatenation of first_name and last_name

SELECT id , CONCAT(first_name , ' ' , last_name) as full_name
FROM Citizen;

/*
Challenge
   Fetch id , full_name from citizens table where full_name here is concatenation of first 4 characters
   from first_name and last_name with a space in between.
   */
   
   SELECT id , 
		CONCAT(LEFT(first_name , 4) , ' ' , RIGHT(last_name , 4)) as full_name
   FROM Citizen;
