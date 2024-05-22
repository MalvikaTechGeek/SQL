USE Customers;

-- INSERT IN SAME SEQUENCE WE SAW IN TABLE EDIT MODE !!!
-- ID -> UNSIGNED SMALLINT + Auto Increment
-- FirstName , LastName -> VARCHAR(30)
-- Age -> UNSIGNED TINYINT + NOT NULL 
-- Gender -> CHAR(6) + NOT NULL
-- ProductsBought -> TINYINT + NOT NULL + DEFAULT (0)
-- Phno -> CHAR(10)

INSERT INTO CustomerDetails 
VALUES (DEFAULT,"Rohit" ,"Sharma" ,30 ,"male",DEFAULT ,"9999999999");

SELECT * FROM CustomerDetails;

INSERT INTO CustomerDetails (FirstName , LastName , Age , Gender , PhoneNumber)
VALUES ( "Rahul" , "Sharma" , 30 , "male", "9999999998");

SELECT * FROM CustomerDetails;

-- UPDATE Statement is used to update the existing records .
-- UPDATE PhoneNumber of Rahul Sharma 
UPDATE CustomerDetails 
SET PhoneNumber = '999999997'
WHERE ID = 2;

SELECT * FROM CustomerDetails;

/*
Challenge 
	We found out that 'Rohit Sharma' actual age was '33' and he also bought one of our products 
    so we need to update 2 values , his age to 33 and ProductsBought to 1
*/

UPDATE CustomerDetails 
SET 
	Age = 33,
	ProductsBought = 1
WHERE ID = 1;

SELECT * FROM CustomerDetails;



-- Now Rahul Sharma is not happy with our products and he wants to cancel his membership . 
-- We use Delete command to remove a record from our tables 

DELETE FROM CustomerDetails
WHERE ID = 2;

SELECT * FROM CustomerDetails;








TRUNCATE TABLE CustomerDetails;