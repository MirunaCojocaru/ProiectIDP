import mysql.connector
import time

mydb = None

def main():
    while True:
        try:
            mydb = mysql.connector.connect(host="mysql_container", user="root", passwd="abcd", port=3306, database="db")
            print("ok")
            break
        except:
            print("sleep")
            time.sleep(1)
            

    while True:
        print("\n")
        loc = input ("Enter departure : ") 
        dest = input ("Enter destination : ") 
        data = input ("Enter date : ")
        tip = input ("Enter class type : ")
        mycursor = mydb.cursor()
        query = "SELECT * FROM Zboruri where destinatie=%s and plecare=%s and data=%s and tip_zbor=%s"
        mycursor.execute(query,(dest,loc,data,tip,))
        myresult = mycursor.fetchall()
        if myresult == [] or myresult[0][5] == 0:
            print("No available flights!")
        else:
            print("Booked flight!")
            print("Destination: ",dest)
            print("Departure: ",loc)
            print("Date: ",data)
            print("Flight class: ",tip)
            print("Price: ",myresult[0][6], " euro")


if __name__ == "__main__":
    main()
