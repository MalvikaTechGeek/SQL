USE Customers;

CREATE TABLE Customers(
      customer_id SMALLINT NOT NULL,
      name VARCHAR(30) NOT NULL,
      age SMALLINT, 
      PRIMARY KEY(customer_id)
);

CREATE TABLE Orders(
      order_id SMALLINT, 
      customer_id SMALLINT, 
      order_details VARCHAR(30), 
      PRIMARY KEY(order_id)
);

INSERT INTO Customers(customer_id , name , age)
VALUES (1 , 'sundar' , 23);

INSERT INTO Customers(customer_id , name , age)
VALUES (2 , 'asish' , 21);

INSERT INTO Customers(customer_id , name , age)
VALUES (3 , 'babar' , 22);

INSERT INTO Orders(order_id , customer_id , order_details)
VALUES (1 , 1 , 'pizza');

INSERT INTO Orders(order_id , customer_id , order_details)
VALUES (2 , 1 , 'coke');

INSERT INTO Orders(order_id , customer_id , order_details)
VALUES (3 , 2 , 'burger');

INSERT INTO Orders(order_id , customer_id , order_details)
VALUES (4 , 4 , 'crispy chicken');

-- APPLY LEFT JOIN 
SELECT * FROM Orders 
LEFT JOIN Customers ON Orders.customer_id = Customers.customer_id;

-- Always alias tables for easy Join condtions 

SELECT * FROM Orders O
LEFT JOIN Customers C ON O.customer_id = C.customer_id;

-- RIGHT JOIN 

SELECT * FROM Orders O
RIGHT JOIN Customers C ON O.customer_id = C.customer_id;

/*
-- FULL/OUTER JOIN 
SELECT * FROM Orders O
FULL JOIN Customers C ON O.customer_id = C.customer_id;

-- THERE is No FULL JOIN in MySQL , but we can emulate results with below query
SELECT * FROM Orders O
LEFT JOIN Customers C ON O.customer_id = C.customer_id
UNION
SELECT * FROM Orders O
RIGHT JOIN Customers C ON O.customer_id = C.customer_id;
*/