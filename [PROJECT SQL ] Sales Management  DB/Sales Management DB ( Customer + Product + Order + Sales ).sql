-- CUSTOMER TABLE

CREATE TABLE CUSTOMER 
(
    ID INT PRIMARY KEY,
    CODE VARCHAR (50),
    NAME VARCHAR (255),
    ADDRESS VARCHAR (255),
    POSTAL VARCHAR (50),
    COUNTRY VARCHAR(255),
    CITY VARCHAR(50),
    STATE VARCHAR(50),
    TEL VARCHAR(20),
    FAX VARCHAR(20),
    HP VARCHAR(20),
    EMAIL VARCHAR(50),
    INDUSTRY VARCHAR(255),
    REMARK VARCHAR(255),
    DATE_CREATED DATE,
    DATE_MODIFIED DATE
);

-- CUSTOMER SUB_ADD TABLE

CREATE TABLE CUSTOMER_ADDRESS (
    ID INT PRIMARY KEY,
    CODE VARCHAR(50),
    ADDRESS VARCHAR(255),
    CONTACT VARCHAR(255),
    TEL VARCHAR(20),
    FAX VARCHAR(20),
    HP VARCHAR(20),
    EMAIL VARCHAR(50),
    REMARK VARCHAR(255),
    DATE_CREATED DATE,
    DATE_MODIFIED DATE
);

CREATE TABLE PRODUCT (
    ID INT PRIMARY KEY,
    CODE VARCHAR(50),
    ITEM VARCHAR(255),
    P_UOM VARCHAR(255),
    S_UOM VARCHAR(255),
    I_UOM VARCHAR(255),    
    GRP VARCHAR(255),
    STOCK INT,
    REMARK VARCHAR(255),
    DATE_CREATED DATE,
    DATE_MODIFIED DATE
);

CREATE TABLE ORDERS (
  ORDER_ID VARCHAR(50) PRIMARY KEY,
  CUSTOMER_ID VARCHAR(50),
  ORDER_DATE DATE,
  TOTAL_SALES DECIMAL(10, 2),
);

CREATE TABLE SALES (
  SALES_ID VARCHAR(50) PRIMARY KEY,
  ORDER_ID VARCHAR(50),
  PRODUCT_ID VARCHAR(50),
  QUANTITY INT,
  ITEM_PRICE DECIMAL(10, 2),
);

INSERT INTO ORDERS (ORDER_ID,CUSTOMER_ID,ORDER_DATE,TOTAL_SALES) VALUES
('2023-01-0001','C001','2023-01-01',29.7),
('2023-01-0002','C002','2023-01-02',24.9),
('2023-01-0003','C003','2023-01-05',49.8),
('2023-01-0004','C004','2023-01-06',19.8),
('2023-01-0005','C005','2023-01-09',59.7),
('2023-01-0006','C008','2023-01-16',29.7),
('2023-01-0007','C009','2023-01-16',49.8),
('2023-01-0008','C019','2023-01-16',19.9),
('2023-01-0009','C001','2023-01-16',19.8),
('2023-01-0010','C002','2023-01-17',24.9),
('2023-01-0011','C016','2023-01-17',59.7),
('2023-01-0012','C017','2023-01-18',49.8),
('2023-01-0013','C018','2023-01-18',59.8),
('2023-01-0014','C019','2023-01-20',39.9),
('2023-02-0001','C003','2023-02-01',119.7),
('2023-02-0002','C007','2023-02-04',49.8),
('2023-02-0003','C007','2023-02-04',39.6),
('2023-02-0004','C003','2023-02-15',29.9),
('2023-02-0005','C005','2023-02-15',74.7),
('2023-02-0006','C008','2023-02-15',39.8);
       
INSERT INTO SALES (SALES_ID,ORDER_ID,PRODUCT_ID,QUANTITY,ITEM_PRICE) VALUES
    ('S001', '2023-01-0001', 'P001', 30, 0.99),
    ('S002', '2023-01-0002', 'P002', 10, 2.49),
    ('S003', '2023-01-0003', 'P002', 20, 2.49),
    ('S004', '2023-01-0004', 'P001', 20, 0.99),
    ('S005', '2023-01-0005', 'P003', 30, 1.99),
    ('S006', '2023-01-0006', 'P001', 30, 0.99),
    ('S007', '2023-01-0007', 'P002', 20, 2.49),
    ('S008', '2023-01-0008', 'P003', 10, 1.99),
    ('S009', '2023-01-0009', 'P001', 20, 0.99),
    ('S010', '2023-01-0010', 'P002', 10, 2.49),
    ('S011', '2023-01-0011', 'P011', 30, 1.99),
    ('S012', '2023-01-0012', 'P012', 20, 2.49),
    ('S013', '2023-01-0013', 'P013', 20, 2.99),
    ('S014', '2023-01-0014', 'P014', 10, 3.99),
	('S015', '2023-02-0001', 'P015', 30, 3.99),
	('S016', '2023-02-0002', 'P016', 20, 2.49),
	('S017', '2023-02-0003', 'P017', 40, 0.99),
    ('S018', '2023-02-0004', 'P018', 10, 2.99),
    ('S019', '2023-02-0005', 'P019', 30, 2.49),
    ('S020', '2023-02-0006', 'P020', 20, 1.99);

	INSERT INTO PRODUCT (ID,CODE,ITEM,GRP,S_UOM,STOCK,P_UOM,I_UOM,DATE_CREATED,DATE_MODIFIED) VALUES
    (1, 'P001', 'Apple', 'Fruit', 0.99,45,0.89,0.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (2, 'P002', 'Milk', 'Dairy', 2.49,60,2.39,2.39,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (3, 'P003', 'Bread', 'Bakery', 1.99,80,1.89,1.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (4, 'P004', 'Banana', 'Fruit', 0.79,55,0.78,0.78,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (5, 'P005', 'Eggs', 'Dairy', 2.99, 30,2.50,2.50,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (6, 'P006', 'Orange', 'Fruit', 0.89, 150,0.79,0.79,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (7, 'P007', 'Yogurt', 'Dairy', 1.99, 80,1.89,1.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (8, 'P008', 'Chicken', 'Meat', 5.99, 20,5.68,5.68,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
	(9, 'P009', 'Grapes', 'Fruit', 1.99, 100,1.95,1.95,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
	(10,'P010', 'Cheese', 'Dairy', 3.49, 50,3.00,3.00,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (11,'P011', 'Pineapple', 'Fruit', 1.99, 100,1.89,1.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (12,'P012', 'Yogurt', 'Dairy', 2.49, 50,2.39,2.39,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (13,'P013', 'Watermelon', 'Fruit', 2.99, 50,2.88,2.88,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (14,'P014', 'Butter', 'Dairy', 3.99, 30,3.89,3.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (15,'P015', 'Strawberries', 'Fruit', 3.99, 80,3.89,3.89,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (16,'P016', 'Milk', 'Dairy', 2.49, 100,2.39,2.39,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (17,'P017', 'Bananas', 'Fruit', 0.99, 200,0.80,0.80,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (18,'P018', 'Eggs', 'Dairy', 2.99, 50,2.90,2.90,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (19,'P019', 'Oranges', 'Fruit', 2.49, 150,2.40,2.40,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
    (20,'P020', 'Yogurt', 'Dairy', 1.99, 100,1.67,1.67,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

INSERT INTO CUSTOMER_ADDRESS (ID,CODE,ADDRESS,CONTACT,TEL,FAX,HP,EMAIL,DATE_CREATED,DATE_MODIFIED) VALUES
(1,'C001','571 Main Street','John Doe','123-456-7890','','028-261-902','johndoe@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,'C002','645 Real Avenue','Jane Smith','987-654-3210','111-333-5555','028-666-902','janesmith@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,'C013','362 Upper Paya Lebar Road Da Jin Factory Building #03-12','Ava Clark','6235-3535','6235-3536','9430-8388','avaclark@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4,'C013','Blk 1013 Geylang East Ave 3 #02-126','Olivia Wilson','444-555-6667','','9621-8811','oliviawilson@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5,'C014','Blk 1013 Geylang East Ave 3 #02-126','James Moore','444-555-6666','','9126-1788','jamesmoore@gmail.com',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6,'C002','15 Woodland Loop #04-08','Peter Parker','999-999-9999','888-888-8888','8181-8181','peterparker@yahoo.com ',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

INSERT INTO CUSTOMER (ID,CODE,NAME,ADDRESS,POSTAL,COUNTRY,STATE,CITY,TEL,FAX,HP,EMAIL,INDUSTRY,DATE_CREATED,DATE_MODIFIED) VALUES
(1,'C001','John Doe','571 Main Street','70571','UNITED STATE','TEXAS','DALLAS','123-456-7890','','028-261-902','johndoe@gmail.com','HOME-BASED',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,'C002','Jane Smith','645 Real Avenue','12546','UNITED STATE','NEW YORK','NEW YORK','987-654-3210','111-333-5555','028-666-902','janesmith@gmail.com','HOME-BASED',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,'C003','David Johnson','444 Four Street','93873','UNITED STATE','MINNESOTA','BENSON','555-123-4567','777-888-9999','028-555-902','davidjohnson@gmail.com','HOME-BASED',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4,'C004','Sarah Johnson','999 Apoco Street','34979','UNITED STATE','MISSOURI','JEFFERSON CITY','111-222-3333','888-999-0000','','sarahjohnson@gmail.com','HOME-BASED',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5,'C005','Michael Brown','4 Loyang Lane #02-03','588398','SINGAPORE','','SINGAPORE','6252-6632','','6252-6632','michaelbrown@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6,'C006','Emily Wilson','601 Rifle Range  Road','588398','SINGAPORE','','SINGAPORE','777-888-9999','','8819-8989','emilywilson@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(7,'C007','Daniel Thomas','78 Gilstead Road,','738322','SINGAPORE','','SINGAPORE','111-222-3333','','9696-9696','danielthomas@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(8,'C008','Sophia Anderson','625 Aljunied Road,#03-05 Aljunied Industrial Complex','389836','SINGAPORE','','SINGAPORE','6556-1234','6556-1234','8899-9988','sophiaanderson@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(9,'C009','Olivia Wilson','2 Leng Kee Road #05-09 Thye Hong Centre','322738','SINGAPORE','','SINGAPORE','6297-0555','6297-2324','6297-0555','oliviawilson@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(10,'C010','Liam Davis','No.4 Farm Rd, Colombo 01500, Sri Lanka','','SRI LANKA','','COLOMBO','888-999-0000','','8113-8347','liamdavis@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(11,'C011','Emma Taylor','15 Woodland Loop #03-05/06','738322','SINGAPORE','','SINGAPORE','111-222-3333','','9754-0148','emmataylor@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(12,'C012','Noah Anderson','Blk 1 Ang Mo Kio Industrial Park 2A #01-09 Ang Mo Kio Tech 1','326738','SINGAPORE','','SINGAPORE','444-555-6666','','5693-5854','noahanderson@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(13,'C013','Ava Clark','362 Upper Paya Lebar Road Da Jin Factory Building #03-12','322738','SINGAPORE','','SINGAPORE','6235-3535','6235-3536','9430-8388','avaclark@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(14,'C014','James Moore','Blk 1013 Geylang East Ave 3 #02-126','389728','AUSTRALIA','TASMANIA','','335-334-325','','335-334-325','jamesmoore@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(15,'C015','Mia Davis','44 Gambas Crescent, Nordcom','322738','SINGAPORE','','SINGAPORE','444-555-6666','','9126-1788','miadavis@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(16,'C016','Benjamin Wilson','15 Woodland Loop #03-05/06','738322','AUSTRALIA','TASMANIA','','777-888-9999','777-888-9999','','benjaminwilson@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(17,'C017','Harper Smith','Blk 1 Defu Lane 10 #03-549','539182','SINGAPORE','','SINGAPORE','111-222-3333','111-222-3333','8862-4887','harpersmith@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(18,'C018','Elijah Johnson','161 Kallang Way #05-20','349247','SINGAPORE','','SINGAPORE','777-888-9999','','9779-4403','elijahjohnson@gmail.com','F&B',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(19,'C019','Sophia Brown','7 Buroh Lane,#03-01 Commonwealth Capital Building','618291','SINGAPORE','','SINGAPORE','444-555-6666','','0953-5756','sophiabrown@gmail.com','RETAIL',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(20,'C020','Henry Taylor','1003 Bukit Merah Central #05-35 Technopreneur Centre','159836','SINGAPORE','','SINGAPORE','777-888-9999','','5756-7031','henrytaylor@gmail.com','HOME-BASED',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);SELECT * FROM CUSTOMER



--  Adding new customers to the database  -- 
INSERT INTO CUSTOMER ( ID ,CODE, NAME, email, address, TEL,DATE_CREATED,DATE_MODIFIED)
VALUES (21, 21, 'Joe root', 'joeroot@gmail.com', '2321 Cross St', '223-356-7890',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

--  Retrieving customer details  --
SELECT * FROM CUSTOMER WHERE ID = 21;

--  Update customer information  --
UPDATE CUSTOMER
SET email = 'joeroot@yahoo.com'
WHERE ID = 21;

SELECT * FROM CUSTOMER WHERE ID = 21;

--  Delete customer records  --
DELETE FROM CUSTOMER WHERE ID = 21;
SELECT * FROM CUSTOMER

SELECT * FROM PRODUCT
--  Add new products to the inventory  --
INSERT INTO PRODUCT(ID, ITEM, GRP, S_UOM, STOCK,DATE_CREATED,DATE_MODIFIED)
VALUES (21, 'Pineberry', 'Fruit', 0.69, 70,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

--  Retrieve product information  --
SELECT * FROM Product WHERE id = 21;

--  Update product details  --
UPDATE Product
SET S_UOM = 1.29
WHERE ID = 21;

--  Update the quantity available for a specific product  --
UPDATE Product
SET STOCK = STOCK - 1
WHERE ID = 21;
SELECT * FROM Product WHERE id = 21;

--  Retrieve products with low inventory  --
SELECT * FROM Product
WHERE STOCK < 50;

--  Delete products from the inventory  --
DELETE FROM PRODUCT WHERE ID = 21;
SELECT * FROM Product;


/*    Reporting and Analysis     */

--  Generate sales report by product  --
SELECT SALES_ID, SUM(quantity) AS total_quantity, SUM(item_price) AS total_revenue1
FROM SALES
GROUP BY SALES_ID;

--  Calculate total sales and revenue  --
SELECT SUM(quantity) AS total_quantity, SUM(item_price) AS total_revenue2
FROM SALES;

--  Analyze product popularity  --
SELECT SALES_ID, COUNT(*) AS total_orders3
FROM SALES
GROUP BY SALES_ID
ORDER BY total_orders3 DESC;

--  Identify best-selling products  --
SELECT PRODUCT_ID, SUM(quantity) AS total_quantity4
FROM SALES
GROUP BY PRODUCT_ID
ORDER BY total_quantity4 DESC;

--  Calculate the total revenue by date range  --
SELECT SUM(total_SALES) AS total_revenue5
FROM Orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';

--  Identify top customers based on total spending  --
SELECT customer_id, SUM(total_SALES) AS total_spending6
FROM Orders
GROUP BY customer_id
ORDER BY total_spending6 DESC;

--  Retrieve the latest orders  --
SELECT TOP 10 * FROM Orders
ORDER BY order_date DESC;

--  Get the average order total  --
SELECT AVG(total_SALES) AS average_order_total7
FROM Orders;

--  Calculate the total revenue for each month  --
SELECT MONTH(order_date) AS month, SUM(total_SALES) AS total_revenue8
FROM Orders
GROUP BY MONTH(order_date);



  --  Advanced Queries  --
  
-- Calculate the total revenue for each category  --
SELECT GRP, SUM(total_sales) AS TOTAL_REVENUE
FROM Orders o
JOIN SALES s ON o.ORDER_ID = s.ORDER_ID
JOIN Product p ON p.code = s.PRODUCT_id
GROUP BY GRP;

--  Calculate the total revenue for each customer  --
--  Note Henry Taylor has no sales. that is why 19 records  --

SELECT c.CODE, c.NAME, SUM(o.total_SALES) AS total_revenue
FROM Customer c
JOIN Orders o ON c.CODE = o.customer_id
GROUP BY c.CODE, c.NAME;


--  Retrieve the top 5 best-selling products  --
SELECT TOP 5 p.CODE, p.ITEM, SUM(s.quantity) AS total_quantity
FROM Product p
JOIN SALES s ON p.CODE = s.product_id
GROUP BY p.CODE, p.ITEM
ORDER BY total_quantity DESC;