CREATE DATABASE drawio;

USE drawio; 

CREATE TABLE customers ( -- table to store customer info 
customer_ID INT AUTO_INCREMENT PRIMARY KEY, -- each customer will have unique id number to reference by 
first_name VARCHAR(25) NOT NULL, -- first and last name will be required so constraint 'NUT NULL' is used
last_name  VARCHAR(25) NOT NULL,
phone VARCHAR(15), -- contact info for customer will not be required so no constraint is used
Email VARCHAR(50)
);

CREATE TABLE vendors ( -- Table to store vendor info
vendor_ID INT AUTO_INCREMENT PRIMARY KEY, -- Each vendor will have unique id number to refenece by
vendor_name VARCHAR(50) NOT NULL, -- vendor name is required as well as all contact info so 'NOT NULL' is used
phone VARCHAR(15) NOT NULL,
email VARCHAR(50)NOT NULL,
address VARCHAR(50) NOT NULL
);

CREATE TABLE products( -- table to store all product info 
product_ID INT AUTO_INCREMENT PRIMARY KEY, -- each product will have unique id number to refenece by
product_name VARCHAR(50) NOT NULL,-- product name is required so 'NOT NULL' is used 
price DECIMAL(10,2), -- price will be stored as 'DECIMAL'
stock INT -- quanitiy of product will be stored, no contraint applied in case product is discontinued 
);

CREATE TABLE orders( -- table to store all order info
order_ID INT AUTO_INCREMENT PRIMARY KEY, -- each order will have unique id number to refenece by
order_date DATETIME NOT NULL,
customer_ID INT, -- 'NOT NULL' not used in case order refers to vendor order
vendor_ID INT, -- 'NOT NULL' not used in case order refers to customer order
amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (customer_ID) REFERENCES customers(customer_ID), -- foreign key to link to customer id
FOREIGN KEY (vendor_ID) REFERENCES vendors(vendor_ID) -- foreign key to link to vendor id
);

CREATE TABLE payments ( -- table to store all payment info 
payment_ID INT AUTO_INCREMENT PRIMARY KEY, -- each payment will have unique id number to refenece by
order_ID INT, -- each payment will be linked to a order or orders
payment_method VARCHAR(15) NOT NULL, -- each payment method will be stored 
payment_date DATETIME NOT NULL,
amount DECIMAL(10,2) NOT NULL, -- all payment amounts will be stored as DECIMAL
FOREIGN KEY (order_ID) REFERENCES orders(order_ID) -- foreign key link to order id
);



