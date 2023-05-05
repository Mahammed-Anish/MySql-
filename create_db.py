import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH')
print(mydb.connection_id)
cur = mydb.cursor()
cur.execute('create database ANISH2')