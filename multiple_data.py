import mysql.connector
mydb = mysql.connector.connect(host = 'localhost', user = 'root', password='anish@123ANISH',database= 'ANISH2')
cur = mydb.cursor()
a = []
z = 'insert into student (STD_ID,STD_NAME,SALARY) values (%s,%s,%s)'
for i in range(2):
    x = input("Enter number")
    y = input("Enter number")
    z = input("Enter number")
    a.append(x)
    a.append(y)
    a.append(z)

# a = [(102,'akram',60000),(101,'shakeer',150000),(102,'yusuf',40000)]
cur.executemany(z,a)    
mydb.commit()
print("DATA INSERTED SUCCESSFULLY")