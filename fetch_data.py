import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
f = 'select * from student'
cur.execute(f)
display = cur.fetchall()
for x in display:
    print(x)