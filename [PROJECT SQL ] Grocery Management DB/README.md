# Grocery-Management-Database-Design

Project: Grocery Management System

Description: 

 The Grocery Management System is designed to manage customer information, product inventory, orders, and order items in a grocery store. It allows for tracking customer details, product information, order history, and generating reports based on the stored data.
 
Database Documentation:
-	The database consists of four tables: Customers, Products, Orders, and Order_Items.
-	Customers table stores customer information such as ID, name, email, address, and contact number.
-	Products table holds details about the available products including ID, name, category, price, and quantity available.
-	Orders table tracks customer orders with fields like order ID, customer ID, order date, and total amount.
-	Order_Items table contains information about the items in each order, including the order item ID, order ID, product ID, quantity, and item price.

Tasks:
1.	Customer Management:
-	Add new customers to the database.
-	Retrieve customer details.
-	Update customer information.
-	Delete customer records.
2.	Product Management:
-	Add new products to the inventory.
-	Retrieve product information.
-	Update product details.
-	Delete products from the inventory.
3.	Order Management:
-	Place new orders for customers.
-	Retrieve order details.
-	Update order information.
-	Cancel or delete orders.
4.	Reporting and Analysis:
-	Generate reports on sales by product, customer, or date range.
-	Calculate total sales and revenue.
-	Analyze product popularity and customer buying patterns.
-	Identify best-selling products and top customers.

These tasks involve performing various SQL operations such as creating tables, inserting data, retrieving information, updating records, and generating reports. The system aims to streamline grocery store operations, facilitate customer management, and provide insights into sales and inventory.


Table Descriptions:
- Customers: Holds information about customers such as their ID, first name, last name, email, address, and contact number.
- Products: Stores details about the available products including the product ID, name, category, price, and quantity available.
- Orders: Keeps track of customer orders with fields like order ID, customer ID, order date, and total amount.
- Order_Items: Contains information about the items in each order, including the order item ID, order ID, product ID, quantity, and item price.


1.	Customers:
-	customer_id (Primary Key): Unique identifier for each customer.
-	first_name: First name of the customer.
-	last_name: Last name of the customer.
-	email: Email address of the customer.
-	address: Address of the customer.
-	contact_number: Contact number of the customer.
2.	Products:
-	product_id (Primary Key): Unique identifier for each product.
-	product_name: Name of the product.
-	category: Category or type of the product.
-	price: Price of the product.
-	quantity_available: Available quantity of the product in the inventory.
3.	Orders:
-	order_id (Primary Key): Unique identifier for each order.
-	customer_id (Foreign Key referencing Customers): Identifier of the customer who placed the order.
-	order_date: Date of the order.
-	total_amount: Total amount of the order.
4.	Order_Items:
-	order_item_id (Primary Key): Unique identifier for each order item.
-	order_id (Foreign Key referencing Orders): Identifier of the order to which the item belongs.
-	product_id (Foreign Key referencing Products): Identifier of the product included in the order.
-	quantity: Quantity of the product in the order.
-	item_price: Price of the product for that specific order item.



