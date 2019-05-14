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
            

    print(mydb)
    while True:
        print("abc")

if __name__ == "__main__":
    main()
