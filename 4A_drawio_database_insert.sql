USE DRAWIO;

INSERT INTO customers (first_name, last_name, phone, email)
VALUES
('John', 'Doe', '123-456-7890', 'johndoe@example.com'),
('Jane', 'Smith', '098-765-4321', 'janesmith@example.com'),
('Alice', 'Brown', '555-666-7777', 'alicebrown@example.com'),
('Bob', 'Davis', '444-555-6666', 'bobdavis@example.com');

SELECT * FROM customers;

INSERT INTO vendors (vendor_name, phone, email, address)
VALUES
('Tech Supplies', '111-222-3333', 'contact@techsupplies.com', '123 Tech Rd'),
('Gadgets Inc.', '222-333-4444', 'info@gadgetsinc.com', '456 Gadget St'),
('Electronics World', '333-444-5555', 'sales@electronicsworld.com', '789 Electronics Ave'),
('Best Vendor', '444-555-6666', 'support@bestvendor.com', '101 Vendor Blvd');

SELECT * FROM vendors;

INSERT INTO products (product_name, price, stock)
VALUES
('Laptop', 1200.00, 10),
('Smartphone', 800.00, 20),
('Tablet', 400.00, 15),
('Headphones', 150.00, 25);

SELECT * FROM products;

INSERT INTO orders (order_date, customer_ID, vendor_ID, amount)
VALUES
('2024-10-01 10:30:00', 1, 1, 1350.00),  -- Customer ID 1 and Vendor ID 1
('2024-10-02 11:00:00', 2, 2, 800.00),   -- Customer ID 2 and Vendor ID 2
('2024-10-03 09:45:00', 3, 3, 1650.00),  -- Customer ID 3 and Vendor ID 3
('2024-10-04 14:20:00', 4, NULL, 150.00); -- Customer ID 4, no vendor (NULL)

SELECT * FROM orders;

INSERT INTO payments (order_ID, payment_method, payment_date, amount)
VALUES
(1, 'Credit Card', '2024-10-01 10:45:00', 1350.00),  -- Payment for order ID 1
(2, 'PayPal', '2024-10-02 11:15:00', 800.00),       -- Payment for order ID 2
(3, 'Bank Transfer', '2024-10-03 09:50:00', 1650.00), -- Payment for order ID 3
(4, 'Cash', '2024-10-04 14:25:00', 150.00);         -- Payment for order ID 4

SELECT * FROM payments;

