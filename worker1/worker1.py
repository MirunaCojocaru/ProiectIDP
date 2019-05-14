import mysql.connector
import time

mydb = None

def main():
    while True:
        try:
            mydb = mysql.connector.connect(host="mysql_container", user="root", passwd="abcd", port=3306, database="db")
            break
        except:
            
            time.sleep(1)
            

    print("List all available flight from your location to requested destination")
    while True:
        print("\n")
        loc = input ("Enter departure : ") 
        dest = input ("Enter destination : ") 
        mycursor = mydb.cursor()
        query = "SELECT * FROM Zboruri where destinatie=%s and plecare=%s"
        mycursor.execute(query,(dest,loc,))
        myresult = mycursor.fetchall()
        if myresult == []:
            print("No available flight!")
            continue
        print("Plecare     Destinatie        Data       Tip zbor        Pret")
        for x in myresult:
          print(x[1],"  ",x[2],"  ",x[3],"  ",x[5],"  ",x[6]," euro")

if __name__ == "__main__":
    main()
