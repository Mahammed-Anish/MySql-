import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
t = 'CREATE TABLE STUDENT(STD_ID integer(4),STD_NAME varchar(30),SALARY integer(10))'
cur.execute(t)