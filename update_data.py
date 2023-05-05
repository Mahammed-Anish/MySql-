import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
t = 'update student set salary=200000 where std_id=100'
cur.execute(t)    
mydb.commit()