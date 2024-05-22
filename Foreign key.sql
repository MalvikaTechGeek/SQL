USE customers;

CREATE TABLE customers
(
      customer_id SMALLINT UNSIGNED , 
      customer_name VARCHAR(30) NOT NULL, 
      phno char(10) NOT NULL, 
      PRIMARY KEY (customer_id )
);

-- Setting FOREIGN KEY example :
-- FOREIGN KEY (column_in_current_table) REFERENCE table_2 (column_in_table_2)

CREATE TABLE orders
(
    order_id INT UNSIGNED ,
    customer_id SMALLINT UNSIGNED NOT NULL,
    order_details varchar(100) NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

/*
HOMEWORK 
	Using the concepts of the previous section , Insert appropriate values inside customers and orders table ,
    or else you can also insert the values which we have used in tables in this lesson .
    We are going to make use of these tables for joins in our next lesson . 
*/
     