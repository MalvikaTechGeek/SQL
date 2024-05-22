USE Customers;

/*
COMMAND STRUCTURE :
      ALTER TABLE table_name
      ADD column_name datatype;
*/
ALTER TABLE CustomerDetails
ADD EmailID varchar(50) UNIQUE;

ALTER TABLE CustomerDetails
ADD PhoneNumber varchar(10) NOT NULL UNIQUE;

-- In case of Constant string length Optimal data type is CHAR 
-- MODIFY command is used inside ALTER to modify the properties of table
ALTER TABLE CustomerDetails
MODIFY COLUMN PhoneNumber CHAR(10);

-- 	DROP command can be used to remove a Database , Table and Column
-- DROP COLUMN
ALTER TABLE CustomerDetails
DROP COLUMN EmailID;

-- DROP TABLE 
DROP TABLE CustomerDetails;

CREATE DATABASE Customers;

-- We use 'USE' statement to Select the Database
-- Example
-- USE database_name;

USE Customers;

CREATE TABLE CustomerDetails
(
     ID SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     FirstName VARCHAR(30),
     LastName VARCHAR(30),
     Age TINYINT UNSIGNED NOT NULL, 
     Gender CHAR(6) NOT NULL, 
     ProductsBought TINYINT UNSIGNED NOT NULL DEFAULT 0, 
     PRIMARY KEY (ID), 
     CHECK (AGE > 12)
);
ALTER TABLE CustomerDetails
ADD EmailID varchar(50) UNIQUE;

ALTER TABLE CustomerDetails
ADD EmailID varchar(50) UNIQUE;

ALTER TABLE CustomerDetails
ADD PhoneNumber varchar(10) NOT NULL UNIQUE;

ALTER TABLE CustomerDetails
MODIFY COLUMN PhoneNumber CHAR(10);

ALTER TABLE CustomerDetails
DROP COLUMN EmailID;


-- TRUNCATE COMMAND is used to REMOVE records Keeping TABLE Structure same 
TRUNCATE TABLE CustomerDetails;
