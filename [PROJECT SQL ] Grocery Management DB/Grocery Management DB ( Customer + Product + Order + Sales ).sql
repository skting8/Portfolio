CREATE DATABASE grocery_management;

USE grocery_management;

-- Create Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  address VARCHAR(255),
  contact_number VARCHAR(20)
);

-- Create Products table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(255),
  category VARCHAR(255),
  price DECIMAL(10, 2),
  quantity_available INT
);

-- Create Orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Items table
CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  item_price DECIMAL(10, 2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

SHOW TABLES;

-- Insert sample data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, address, contact_number)
VALUES
    (1, 'John', 'Doe', 'johndoe@gmail.com', '123 Main St', '123-456-7890'),
    (2, 'Jane', 'Smith', 'janesmith@gmail.com', '456 Elm St', '987-654-3210'),
    (3, 'David', 'Johnson', 'davidjohnson@gmail.com', '789 Oak St', '555-123-4567'),
    (4, 'Sarah', 'Johnson', 'sarahjohnson@gmail.com', '321 Pine St', '111-222-3333'),
	(5, 'Michael', 'Brown', 'michaelbrown@gmail.com', '789 Maple Ave', '444-555-6666'),
    (6, 'Emily', 'Wilson', 'emilywilson@gmail.com', '567 Oak St', '777-888-9999'),
    (7, 'Daniel', 'Thomas', 'danielthomas@gmail.com', '789 Elm St', '111-222-3333'),
    (8, 'Sophia', 'Anderson', 'sophiaanderson@gmail.com', '321 Pine St', '444-555-6666'),
    (9, 'Olivia', 'Wilson', 'oliviawilson@gmail.com', '123 Elm St', '555-666-7777'),
    (10, 'Liam', 'Davis', 'liamdavis@gmail.com', '456 Pine St', '888-999-0000'),
	(11, 'Emma', 'Taylor', 'emmataylor@gmail.com', '789 Oak St', '111-222-3333'),
    (12, 'Noah', 'Anderson', 'noahanderson@gmail.com', '456 Elm St', '444-555-6666'),
    (13, 'Ava', 'Clark', 'avaclark@gmail.com', '321 Pine St', '777-888-9999'),
    (14, 'James', 'Moore', 'jamesmoore@gmail.com', '567 Oak St', '111-222-3333'),
    (15, 'Mia', 'Davis', 'miadavis@gmail.com', '789 Elm St', '444-555-6666'),
    (16, 'Benjamin', 'Wilson', 'benjaminwilson@gmail.com', '123 Pine St', '777-888-9999'),
    (17, 'Harper', 'Smith', 'harpersmith@gmail.com', '567 Elm St', '111-222-3333'),
  (18, 'Elijah', 'Johnson', 'elijahjohnson@gmail.com', '321 Oak St', '777-888-9999'),
  (19, 'Sophia', 'Brown', 'sophiabrown@gmail.com', '789 Pine St', '444-555-6666'),
  (20, 'Henry', 'Taylor', 'henrytaylor@gmail.com', '123 Oak St', '777-888-9999');
  
  
  -- Insert sample data into Products table
INSERT INTO Products (product_id, product_name, category, price, quantity_available)
VALUES
    (1, 'Apple', 'Fruit', 0.99, 100),
    (2, 'Milk', 'Dairy', 2.49, 50),
    (3, 'Bread', 'Bakery', 1.99, 75),
    (4, 'Banana', 'Fruit', 0.79, 200),
    (5, 'Eggs', 'Dairy', 2.99, 30),
    (6, 'Orange', 'Fruit', 0.89, 150),
    (7, 'Yogurt', 'Dairy', 1.99, 80),
    (8, 'Chicken', 'Meat', 5.99, 20),
	(9, 'Grapes', 'Fruit', 1.99, 100),
	(10, 'Cheese', 'Dairy', 3.49, 50),
    (11, 'Pineapple', 'Fruit', 1.99, 100),
    (12, 'Yogurt', 'Dairy', 2.49, 50),
    (13, 'Watermelon', 'Fruit', 2.99, 50),
    (14, 'Butter', 'Dairy', 3.99, 30),
    (15, 'Strawberries', 'Fruit', 3.99, 80),
    (16, 'Milk', 'Dairy', 2.49, 100),
    (17, 'Bananas', 'Fruit', 0.99, 200),
    (18, 'Eggs', 'Dairy', 2.99, 50),
    (19, 'Oranges', 'Fruit', 2.49, 150),
    (20, 'Yogurt', 'Dairy', 1.99, 100);
    
    
    -- Insert sample data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2023-01-01', 9.99),
	(2, 2, '2023-01-02', 15.50),
    (3, 3, '2023-01-03', 5.75),
    (4, 3, '2023-01-04', 8.25),
    (5, 4, '2023-01-05', 11.50),
    (6, 5, '2023-01-06', 14.99),
    (7, 6, '2023-01-07', 9.75),
    (8, 7, '2023-01-08', 12.50),
    (9, 8, '2023-01-09', 7.50),
    (10, 9, '2023-01-10', 10.25),
    (11, 10, '2023-01-11', 12.99),
    (12, 11, '2023-01-12', 9.75),
    (13, 12, '2023-01-13', 10.99),
    (14, 13, '2023-01-14', 15.50),
    (15, 14, '2023-01-15', 13.25),
    (16, 15, '2023-01-16', 9.50),
    (17, 16, '2023-01-17', 8.99),
    (18, 17, '2023-01-18', 6.50),
    (19, 18, '2023-01-19', 11.50),
    (20, 19, '2023-01-20', 9.75);
    
    
    -- Insert sample data into Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, item_price)
VALUES
    (1, 1, 1, 3, 2.97),
    (2, 1, 2, 1, 2.49),
    (3, 2, 2, 2, 4.98),
    (4, 4, 1, 2, 1.98),
    (5, 5, 3, 3, 5.97),
    (6, 6, 1, 3, 2.97),
    (7, 6, 2, 2, 3.98),
    (8, 7, 3, 1, 5.99),
    (9, 9, 1, 2, 3.98),
    (10, 10, 2, 1, 3.49),
    (11, 11, 11, 3, 5.97),
    (12, 12, 12, 2, 4.98),
    (13, 13, 13, 2, 5.98),
    (14, 14, 14, 1, 3.99),
	(15, 15, 15, 3, 11.97),
	(16, 16, 16, 2, 4.98),
	(17, 17, 17, 4, 3.96),
    (18, 18, 18, 1, 2.99),
    (19, 19, 19, 3, 7.47),
    (20, 20, 20, 2, 3.98);
  
    
    SHOW TABLES;
    SELECT * FROM customers;
    SELECT * FROM products;
	SELECT * FROM orders;
	SELECT * FROM  orders_items;

    
--  Adding new customers to the database  -- 
  INSERT INTO Customers (customer_id, first_name, last_name, email, address, contact_number)
VALUES (21, 'Joe', 'root', 'joeroot@gmail.com', '2321 Cross St', '223-356-7890');

--  Retrieving customer details  --
SELECT * FROM Customers WHERE customer_id = 21;

--  Update customer information  --
UPDATE Customers
SET email = 'joeroot@yahoo.com'
WHERE customer_id = 21;

--  Delete customer records  --
DELETE FROM Customers WHERE customer_id = 21;


--  Add new products to the inventory  --
INSERT INTO Products (product_id, product_name, category, price, quantity_available)
VALUES (21, 'Pineberry', 'Fruit', 0.69, 70);

--  Retrieve product information  --
SELECT * FROM Products WHERE product_id = 21;

--  Update product details  --
UPDATE Products
SET price = 1.29
WHERE product_id = 21;

--  Update the quantity available for a specific product  --
UPDATE Products
SET quantity_available = quantity_available - 1
WHERE product_id = 2;

--  Retrieve products with low inventory  --
SELECT * FROM Products
WHERE quantity_available < 50;

--  Delete products from the inventory  --
DELETE FROM Products WHERE product_id = 21;




/*    Reporting and Analysis     */

--  Generate sales report by product  --
SELECT product_id, SUM(quantity) AS total_quantity, SUM(item_price) AS total_revenue
FROM Order_Items
GROUP BY product_id;

--  Calculate total sales and revenue  --
SELECT SUM(quantity) AS total_quantity, SUM(item_price) AS total_revenue
FROM Order_Items;

--  Analyze product popularity  --
SELECT product_id, COUNT(*) AS total_orders
FROM Order_Items
GROUP BY product_id
ORDER BY total_orders DESC;

--  Identify best-selling products  --
SELECT product_id, SUM(quantity) AS total_quantity
FROM Order_Items
GROUP BY product_id
ORDER BY total_quantity DESC;

--  Calculate the total revenue by date range  --
SELECT SUM(total_amount) AS total_revenue
FROM Orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';

--  Identify top customers based on total spending  --
SELECT customer_id, SUM(total_amount) AS total_spending
FROM Orders
GROUP BY customer_id
ORDER BY total_spending DESC;

--  Retrieve the latest orders  --
SELECT * FROM Orders
ORDER BY order_date DESC
LIMIT 10;

--  Get the average order total  --
SELECT AVG(total_amount) AS average_order_total
FROM Orders;

--  Calculate the total revenue for each month  --
SELECT MONTH(order_date) AS month, SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY MONTH(order_date);



  --  Advanced Queries  --
  
--  Calculate the total revenue for each category  --
SELECT category, SUM(total_amount) AS total_revenue
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY category;

--  Calculate the total revenue for each customer  --
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

--  Retrieve the top 5 best-selling products  --
SELECT p.product_id, p.product_name, SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 5;







