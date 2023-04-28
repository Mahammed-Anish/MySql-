 select * from RGM;

-- FIND ALL THE ROWS WHERE std_SESSION IS EQUAL TO JAVA

SELECT * FROM RGM WHERE std_ssn = "JAVA";

SELECT std_name,std_ssn,std_cntct FROM RGM WHERE std_ssn = "JAVA";

-- the quick brown fox jumped over the lazy dog   --  for increasing typing speed 

SELECT * FROM RGM WHERE std_ssn = "python" AND std_address="nandyal";

-- to get all the columns where the name of the student starting with s letter 
-- here % means all and we can use single or double quotes in "b%" 

SELECT * FROM RGM WHERE std_name LIKE "b%";

SELECT * FROM RGM WHERE std_name LIKE "bb%";

-- to get all the columns where the name of the student ending with a letter  

SELECT * FROM RGM WHERE std_name LIKE "%a";

-- query to find the name of the student using middle letter
-- which letter u know that much underscores should be kept before it in query
-- underscore represents a single character
 
SELECT * FROM RGM WHERE std_name LIKE "_a%";

-- QUERY TO SHOW ALL THE NAMES EXCLUDING THE NAMES STARTING WITH A

SELECT * FROM RGM WHERE std_name NOT LIKE "a%";
SELECT * FROM RGM WHERE std_name NOT LIKE "_b%";
SELECT * FROM RGM WHERE std_name NOT LIKE "%c";

SELECT * FROM RGM WHERE std_address IN ("kurnool");

-- if we want to fetch the data from multiple columns we use "in" opeartor and to fetch the data from a single column we use "=" operator

SELECT * FROM RGM WHERE std_address IN ("kurnool", 'nandyal');
SELECT * FROM RGM WHERE std_address = 'kurnool' OR std_address = 'nandyal';

CREATE TABLE students (
ID INT PRIMARY KEY NOT NULL,
SNAME VARCHAR(30) NOT NULL,
MARKS INT NOT NULL
);

SELECT * FROM students;

INSERT INTO students VALUES (20578,"anish",78);
INSERT INTO students VALUES (20597,"nithin",97);
INSERT INTO students VALUES (20569,"pakshi",69);
INSERT INTO students VALUES (20577,"madhu",77);
INSERT INTO students VALUES (205130,"heroranga",99);

-- USAGE OF RELATONAL OPERATORS 

SELECT * FROM students WHERE MARKS > 70;
SELECT * FROM students WHERE MARKS >= 78;
SELECT * FROM students WHERE MARKS < 70;
SELECT * FROM students WHERE MARKS <= 77;
SELECT * FROM students WHERE MARKS != 99;
-- != AND <> OPERATORS ARE SAME
SELECT * FROM students WHERE MARKS <> 78;
SELECT * FROM students WHERE MARKS = 78;

SELECT * FROM students WHERE MARKS BETWEEN 80 AND 100;

-- TO GET MARKS IN ASCENDING ORDER AND NOT BY IDS WE USE ORDER BY OPERATOR
SELECT * FROM students WHERE MARKS BETWEEN 70 AND 90 ORDER BY MARKS; -- WE WILL GET BY DEFAULT ASCENDING ORDER OF VALUES WE NEED NOT TO MENTION ASC 
SELECT * FROM students WHERE MARKS BETWEEN 70 AND 90 ORDER BY MARKS ASC; -- ASCENDING ORDER
SELECT * FROM students WHERE MARKS BETWEEN 70 AND 90 ORDER BY MARKS DESC; --  DESCENDING ORDER


SELECT * FROM students WHERE NOT MARKS = 78; -- WE CAN ALSO USE "NOT" INSTEAD OF != and <>
 
SELECT * FROM students;

SELECT DISTINCT std_address FROM RGM ;  --  TO GET UNIQUE VALUES FROM THE COLUMN

SELECT COUNT(DISTINCT std_address) FROM RGM; -- TO GET THE COUNT OF NUMBER OF UNIQUE VALUES 
SELECT COUNT(DISTINCT MARKS) FROM students;
SELECT * FROM students WHERE NOT MARKS = 78 AND NOT MARKS = 97;
SELECT * FROM students LIMIT 3; -- TO SHOW ONLY THE SPECIFIC NO OF ROWS WE USE "LIMIT"  
SELECT * FROM students WHERE MARKS = 78 LIMIT 5;
SELECT * FROM students ORDER BY SNAME LIMIT 3;

-- TO GROUP THE VALUES WE USE GROUP BY CLAUSE. WE CAN GROUP THE VALUES. 
SELECT COUNT(SNAME),SNAME FROM students GROUP BY SNAME;

SELECT * FROM RGM WHERE std_clg = "srec" ORDER BY std_ADDRESS LIMIT 2; 

CREATE TABLE DOB(
dob DATE      -- TO INSERT  DATE WE SPECIFY DATA TYPE AS DATE
);

INSERT INTO DOB VALUES ("2023-04-28");  --  DATE FORMAT IS  YYYY-MM-DD
SELECT * FROM DOB;
-- SUM, MIN, MAX FUNCTIONS ON 01-05-2023