import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
z = 'insert into student (STD_ID,STD_NAME,SALARY) values (%s,%s,%s)'
a = (100,'anish',100000)
cur.execute(z,a)    
mydb.commit()
print("DATA INSERTED SUCCESSFULLY")