import mysql.connector

mydb = mysql.connector.connect(
  host="mysql_container",
  user="root",
  passwd="abcd"
)

print(mydb)
