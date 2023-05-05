import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
t = 'delete from student where std_id=101'
cur.execute(t)    
mydb.commit()