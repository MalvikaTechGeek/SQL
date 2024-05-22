USE customers;

INSERT INTO customers(customer_id , customer_name , phno)
VALUES (1 , 'rahul' , '4578346587');

INSERT INTO customers(customer_id , customer_name , phno)
VALUES (2 , 'sachin' , '3465466534');

INSERT INTO customers(customer_id , customer_name , phno)
VALUES (3 , 'rohit' , '3455345455');

INSERT INTO customers(customer_id , customer_name , phno)
VALUES (4 , 'kohli' , '5664564566');

-- ---------------------------------------------- 

INSERT INTO orders(order_id , customer_id , order_details)
VALUES (1 , 1 , 'Pizza , coke');

INSERT INTO orders(order_id , customer_id , order_details)
VALUES (2 , 1 , 'Burger , french fries');

INSERT INTO orders(order_id , customer_id , order_details)
VALUES (3 , 3 , 'French fries , pepsi');

INSERT INTO orders(order_id , customer_id , order_details)
VALUES (4 , 4 , 'Idly , Sambar');
 
INSERT INTO orders(order_id , customer_id , order_details)
VALUES (5 , 2 , 'Paneer tikka , diet coke');

INSERT INTO orders(order_id , customer_id , order_details)
VALUES (6 , 1 , 'Burger , coke');
/*
INSERT INTO orders(order_id , customer_id , order_details)
VALUES (7 , 5 , 'Burger , coke');
*/
-- ------------------------------------------------

SELECT *
FROM orders 
JOIN
 	customers ON customers.customer_id = orders.customer_id
WHERE order_id = 5;

/*
Challenge . Fetch the order_id , customer_id , customer_name and order_details for the latest 3 orders 
HINT - As order_id is in increasing order , we can consider latest 3 orders as top 3 highest values in order_id 
*/

SELECT order_id , orders.customer_id , customer_name , order_details
FROM orders INNER JOIN customers
ON orders.customer_id = customers.customer_id
ORDER BY order_id DESC
LIMIT 3;