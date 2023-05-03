SELECT * FROM MANAGER;
-- FINDING THE SECOND LARGEST SALARY FROM MANAGER TABLE
-- AFTER LIMIT KEYWORD THE 1ST NUMBER IS USED TO GET THE REQUIRED NUMBER FROM TABLE 
-- AND THIS STARTS FROM 0 AND IT IS LIKE INDEXING
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 1,1;

-- FINDING THE THIRD LARGEST SALARY FROM MANAGER TABLE 
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 2,1;

-- FINDING THE LARGEST SALARY FROM MANAGER TABLE 
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 0,1;
SELECT NAME,SALARY FROM MANAGER ORDER BY SALARY DESC LIMIT 0,2;

-- 					JOINS
-- 4 TYPES : 
-- 1) JOIN(OR)INNER JOIN 
-- 2) FULL JOIN
-- 3) LEFT JOIN
-- 4) RIGHT JOIN

-- CREATING A TABLE FOR PERFORMINH JOIN OPERATIONS

CREATE TABLE ORDERSS(
ORDER_ID INT, ORDER_DATE DATE, CUSTOMER_ID INT);
CREATE TABLE CUSTOMERS(
CUST_ID INT, CUST_NAME VARCHAR(30),CONTACT_NAME VARCHAR(30),COUNTRY VARCHAR(30)
);

INSERT INTO ORDERSS VALUES (110,'2023-05-01',200), (111,'2023-05-02',207), (112,'2023-05-03',201),
(114,'2023-05-04',204), (113,'2023-05-05',205);
INSERT INTO CUSTOMERS VALUES (110,'ANISH','ANS','INDIA'), (111,'LEPAKSHI','PAKSHI','NEWZEALAND'),
 (112,'NITHIN','CHITRA','AUSTRALIA'),(114,'MADHU','BIGMAN','NEWZEALAND'), 
 (113,'RANGA','HERO','AUSTRALIA');
 
 SELECT * FROM ORDERSS;
 SELECT * FROM CUSTOMERS;
UPDATE CUSTOMERS SET CUST_ID = 201 WHERE CUST_ID = 110;
UPDATE CUSTOMERS SET CUST_ID = 204 WHERE CUST_ID = 111;
UPDATE CUSTOMERS SET CUST_ID = 200 WHERE CUST_ID = 112;
UPDATE CUSTOMERS SET CUST_ID = 205 WHERE CUST_ID = 113;

-- JOINS
-- 1) INNER JOIN

SELECT ORDERSS.ORDER_ID,CUSTOMERS.CUST_NAME,ORDERSS.ORDER_DATE FROM ORDERSS
INNER JOIN CUSTOMERS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID;

CREATE TABLE STAFF(
ID INT, NAME VARCHAR(30), AGE INT, PACKAGE INT);

CREATE TABLE PAYMENT(
ID INT, DA_TE DATE, STAFF_ID INT, AMOUNT INT);

INSERT INTO STAFF VALUES (201,'ANISH',20,20000),(202,'PAKSHI',20,30000),(203,'NITHIN',21,50000),
(204,'HERO',22,70000);

INSERT INTO PAYMENT VALUES (300,'2023-05-01',201,10000),(302,'2023-05-02',202,15000),
(304,'2023-05-03',203,18000),(305,'2023-05-07',209,40000);

SELECT * FROM STAFF;
SELECT * FROM PAYMENT;

-- WITHOUT USING JOIN
SELECT s.ID,NAME,AGE,AMOUNT FROM STAFF s, PAYMENT p WHERE s.id = p.STAFF_ID;

SELECT * FROM ORDERSS;
ALTER TABLE ORDERSS ADD SHIPPING_ID INT;
UPDATE ORDERSS SET SHIPPING_ID = 1234 WHERE ORDER_ID = 110;
UPDATE ORDERSS SET SHIPPING_ID = 6666 WHERE ORDER_ID = 111;
UPDATE ORDERSS SET SHIPPING_ID = 7777 WHERE ORDER_ID = 112;
UPDATE ORDERSS SET SHIPPING_ID = 8888 WHERE ORDER_ID = 113;
UPDATE ORDERSS SET SHIPPING_ID = 9999 WHERE ORDER_ID = 114;

CREATE TABLE SHIPPING (
SHPNG_ID INT, NAME VARCHAR(30));
SELECT * FROM SHIPPING;
SELECT * FROM ORDERSS;
SELECT * FROM CUSTOMERS;

INSERT INTO SHIPPING VALUES (1234,"ANS"),(7777,"EXPRESS"),(8888,"YYYY"),(6666,"SSSS"),(8598,"HVH");

SELECT ORDERSS.ORDER_ID, CUSTOMERS.CUST_NAME, SHIPPING.NAME FROM (
(ORDERSS INNER JOIN CUSTOMERS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID)
INNER JOIN SHIPPING ON ORDERSS.SHIPPING_ID = SHIPPING.SHPNG_ID);

-- LEFT JOIN
SELECT CUSTOMERS.CUST_NAME,ORDERSS.ORDER_ID FROM CUSTOMERS
LEFT JOIN ORDERSS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID;

-- RIGHT JOIN
SELECT CUST_NAME,COUNTRY,ORDER_DATE FROM CUSTOMERS
RIGHT JOIN ORDERSS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID;

-- USING OF ORDER BY IN RIGHT JOIN
SELECT CUST_NAME,COUNTRY,ORDER_DATE FROM CUSTOMERS
RIGHT JOIN ORDERSS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID ORDER BY CUSTOMERS.CUST_NAME;

-- USING OF ORDER BY IN LEFT JOIN
SELECT CUSTOMERS.CUST_NAME,ORDERSS.ORDER_ID FROM CUSTOMERS
LEFT JOIN ORDERSS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID ORDER BY CUSTOMERS.CUST_NAME;

-- USAGE OF LIKE AND ORDER BY IN JOINS
SELECT CUSTOMERS.CUST_NAME,ORDERSS.ORDER_ID FROM CUSTOMERS
LEFT JOIN ORDERSS ON ORDERSS.CUSTOMER_ID = CUSTOMERS.CUST_ID  
WHERE CUSTOMERS.CUST_NAME LIKE 'A%' ORDER BY CUSTOMERS.CUST_NAME;

-- FULL OUTER JOIN
SELECT CUST_NAME, ORDERSS.ORDER_ID FROM CUSTOMERS 
FULL JOIN ORDERSS ON CUST_ID = ORDERSS.CUSTOMER_ID;

SELECT CUSTOMERS.CUST_NAME, ORDERSS.ORDER_ID FROM CUSTOMERS 
LEFT JOIN ORDERSS ON CUSTOMERS.CUST_ID = ORDERSS.CUSTOMER_ID
UNION
SELECT CUSTOMERS.CUST_NAME, ORDERSS.ORDER_ID FROM CUSTOMERS 
RIGHT JOIN ORDERSS ON CUSTOMERS.CUST_ID = ORDERSS.CUSTOMER_ID;


-- DIFFERENT DATA TYPES THAT ARE USED WHILE CREATING A TABLE
CREATE TABLE TEST(
ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
C2 VARCHAR(30) NOT NULL,
C3 VARCHAR(30) DEFAULT 'SOFTWARE ENGINEER');

ALTER TABLE TEST AUTO_INCREMENT = 100;