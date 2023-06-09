show databases;

SELECT * FROM RGM;

UPDATE RGM SET std_name="ANISH" WHERE std_cntct = 123456; -- UPDATE EXISTING DATA
-- settings for update : edit->preferences->sql editor->scroll down->uncheck safe mode 
UPDATE RGM SET std_ssn="sql", std_cntct=876598 WHERE std_cntct=345678;


CREATE TABLE TESTs(STUDENT_ID INT PRIMARY KEY, STUDENT_NAME VARCHAR(30), STUDENT_marks INT);
SELECT * FROM TESTs;
SELECT * FROM students;
INSERT INTO TESTs SELECT * FROM students;  -- copy the data from student to test table
-- INSERT INTO TEST SELECT * FROM HEROVIRED.RGM;
 --  for copying the no. of columns should be same 

-- delete command will delete entire data and table 
--  trunkate command will only clear the data but not table
 
 TRUNCATE TABLE TESTs; -- deletes only data but not the table
 
 DELETE FROM students WHERE SNAME="heroranga"; -- deletes only specific entry from table which matches the query
 
 DROP TABLE TESTs; -- THE TABLE IS DELETED BY USING DROP COMMAND
 
 ALTER TABLE students RENAME COLUMN SNAME TO STU_NAME;  -- ALTER COMMAND WILL BE USED TO RENAME THE COLUMN NAME
 SELECT * FROM students;
 
ALTER TABLE students RENAME TO A_STUDENTS;
SELECT * FROM A_STUDENTS;

-- update can be used to update column name,table name and to add/delete another column name 
-- alter can be used to change the values of the table

ALTER TABLE A_STUDENTS ADD ADDRESS VARCHAR(30);
-- NOW WE USE UPDATE COMMAND TO ENTER VALUES INTO NEWLY ADDED COLUMN
UPDATE A_STUDENTS SET ADDRESS = "HYDERABAD" WHERE ID=20569;
UPDATE A_STUDENTS SET ADDRESS = "NANDYAL" WHERE ID=20577;
UPDATE A_STUDENTS SET ADDRESS = "GUNTAKAL" WHERE ID=20578;
UPDATE A_STUDENTS SET ADDRESS = "URAVAKONDA" WHERE ID=20597;

-- TO CHANGE THE DATA TYPE OR SIZE  OF COLUMN
ALTER TABLE A_STUDENTS MODIFY COLUMN ADDRESS VARCHAR(20);
-- TO CHECK THIS UPDATE GOTO : TABLNAME->1ST OPTION i->COLUMNS

-- FOR DROPPPING PARTICULAR COLUMN
ALTER TABLE A_STUDENTS DROP COLUMN ADDRESS;
-- FOR DROPPING MULTIPLE COLUMNS 
ALTER TABLE salesman DROP COLUMN SNAME, DROP COLUMN CITY; -- HERE WE CANNOT DROP COLUMN HAVING PRIMARY KEY 
SELECT * FROM salesman; 
-- TO DELETE ENTIRE DATA USING DELETE COMMAND 
DELETE FROM salesman;

-- AGGREGATE FUNCTIONS
SELECT * FROM a_students;

SELECT MIN(MARKS) FROM a_students;
SELECT AVG(MARKS) FROM a_students;
SELECT MAX(MARKS) FROM a_students;
SELECT SUM(MARKS) FROM a_students;

SELECT SUM(MARKS) AS TOTAL FROM a_students;  -- TO DISPLAY SPECIFIED NAME AS  COLUMN NAME 
SELECT COUNT(MARKS) FROM a_students;


CREATE DATABASE EXERCISE;
SELECT * FROM CUSTOMER;
CREATE TABLE CUSTOMER(ID INT PRIMARY KEY,NAME VARCHAR(20), CITY VARCHAR(20),GRADE INT,SALESMAN_ID INT);

INSERT INTO CUSTOMER VALUES (101,'SUNEEL','DELHI',98,201),
(102,'VAMSI','HYDERABAD',198,202),
(103,'VISHNU','MUMBAI',79,203),
(104,'DON','KERALA',178,204),
(105,'TIRU','KADAPA',200,205),
(106,'CHARAN','BANGALOOR',100,206),
(107,'CHINTU','CHENNAI',296,207),
(108,'RAJESH','KOLKATA',67,208),
(109,'VINAY','GUJARAT',94,209),
(110,'SATYABANGARAM','RAJASTAN',168,210);

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHOSE GRADE ARE ABOVE 100
SELECT * FROM CUSTOMER WHERE GRADE>100; 

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHOSE GRADE ARE ABOVE AND EQUAL TO 100
SELECT * FROM CUSTOMER WHERE GRADE>=100;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHOSE GRADE ARE ABOVE AND EQUAL TO 100 IN ASCENDING ORDER
SELECT * FROM CUSTOMER WHERE GRADE>=100 ORDER BY GRADE;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHO ARE LIVING IN HYDERABAD CITY AND GRADE<=100
SELECT * FROM CUSTOMER WHERE CITY="HYDERABAD" AND GRADE<=100;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHO ARE LIVING IN HYDERABAD CITY AND GRADE>100
SELECT * FROM CUSTOMER WHERE CITY="HYDERABAD" AND GRADE>100;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHO ARE FROM HYDERABAD CITY OR GRADE ABOVE THAN 100
SELECT * FROM CUSTOMER WHERE CITY="HYDERABAD" OR GRADE>100;
SELECT NAME FROM CUSTOMER WHERE CITY="HYDERABAD" OR GRADE>100;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHO ARE EITHER FROM THE KERALA CITY OR
--  DO NOT HAVE A GRADE MORE THAN 100
SELECT * FROM CUSTOMER WHERE CITY="KERALA" OR GRADE<100;
SELECT * FROM CUSTOMER WHERE CITY="KERALA" OR NOT GRADE>=100;

-- WRITE A SQL QUERY TO FIND OUT THE DETAILS OF THE CUSTOMER WHO DO NOT BELONG TO THE CITY MUMBAI OR 
-- HAVE A GRADE THAT EXCEEDS 200
SELECT * FROM CUSTOMER WHERE CITY!="MUMBAI" OR GRADE>200;
SELECT * FROM CUSTOMER WHERE NOT CITY="MUMBAI" OR GRADE>200;
SELECT * FROM CUSTOMER WHERE NOT CITY="MUMBAI" AND GRADE>200;

-- CREATION OF NEW TABLE ORDERS
CREATE TABLE ORDERS(ORDER_NUM INT, PURCHASE_AMT INT, ORDER_DATE DATE, CUSTOMER_ID INT, SALESMAN_ID INT);
SELECT * FROM ORDERS;

INSERT INTO ORDERS VALUES (2002,1000,'2023-04-23',100,200), 
(2003,1100,'2023-04-25',101,201), (2003,1200,'2023-04-30',102,202),
(2004,1300,'2023-04-28',103,203), (2005,1000,'2023-05-21',104,204);

-- FIND THE ORDER DETAILS EXCLUDING THE DATE 30-04-2023  AND SALESMAN ID MORE THAN 202  OR PURCHASE 
-- AMOUNT GREATER THAN 1000
SELECT * FROM ORDERS WHERE NOT ORDER_DATE='2023-04-30' AND (SALESMAN_ID>202 OR PURCHASE_AMT>1000);

-- NEW TABLE 

CREATE TABLE SALESMANS(
SALESMAN_ID INT PRIMARY KEY, NAME VARCHAR(20), CITY VARCHAR(20), COMMISSION FLOAT
); 
SELECT * FROM SALESMANS;

INSERT INTO SALESMANS VALUES (200,'ANISH','NANDYAL',0.45),
(201,'NITHIN','KURNOOL',0.23),
(202,'PAKSHI','HYDERABAD',0.32),
(203,'MADHU','PUNJAB',0.43);

-- TO FIND THE SALESMAN DETAILS  WHOSE COMMISSIONS ARE WITHIN THE RANGE FROM 0.23 TO 0.45
SELECT * FROM SALESMAN WHERE COMMISSION>=0.23 AND COMMISSION<=0.45;
SELECT * FROM SALESMAN WHERE COMMISSION BETWEEN 0.23 AND 0.45;

-- FIND THE SALESMAN DETAILS WHOSE NAME STARTS WITH A LETTER
SELECT * FROM SALESMAN WHERE NAME LIKE 'A%'; 

-- CREATE A NEW COLUMN ADDRESS, INSERT SOME DATA IN THAT ADDRESS COLUMN AND DISPLAY ALL THOSE ADDRESS 
-- IN ASCENDING ORDER
ALTER TABLE SALESMANS ADD ADDRESS VARCHAR(30);
UPDATE SALESMANS SET ADDRESS="BANGALORE" WHERE CITY = "KURNOOL";
SELECT * FROM SALESMANS ORDER BY ADDRESS DESC;
SELECT ADDRESS AS SALESMAN_ADDRESS FROM SALESMANS ORDER BY ADDRESS DESC; -- AS KEYWORD IS UDE TO CREATE ALIAS NAME 
DROP TABLE SALESMAN;