
print("hello,welcome to our library")
print("choose between 0 to 2:")
print("0 for showing the list of books ")
print("1 for inserting book in the list")
print("2 for inserting new members")
print("3 for borrowing books")
print("4 for exiting menu")
choice=0
while choice!=4:
    choice = int(input("please insert your direction"))
    import mysql.connector

    mydb = mysql.connector.connect(
      host="localhost",
      user="mahdi",
      password="maa1371",
      database="library"
    )
    mycursor = mydb.cursor()
    if choice==0:
        mycursor.execute("SELECT * FROM bookid")
        myresult = mycursor.fetchall()
        for x in myresult:
            print(x)
    elif choice==1:
        bname = input("bname:")
        shabak = int(input("shabak:"))
        price = int(input("price:"))
        phone_n = int(input("phone_n:"))
        sql = "INSERT INTO bookid (book_name,shabak,price,subject) VALUES (%s, %s, %s, %s)"
        val = (bname, shabak, price, phone_n)
        mycursor.execute(sql, val)
        mydb.commit()
        print(mycursor.rowcount, "book record inserted.")

    elif choice==2:
        fname = input("fname:")
        lname = input("lname:")
        ncode = int(input("ncode:"))
        phone = int(input("phone:"))
        sql = "INSERT INTO member (name,last_name,n_code,phone) VALUES (%s, %s, %s, %s)"
        val = (fname, lname, ncode, phone)
        mycursor.execute(sql, val)
        mydb.commit()
        print(mycursor.rowcount, "member record inserted.")
    elif choice==3:
        mycursor.execute("SELECT book_name FROM bookid")
        myresult = mycursor.fetchall()

        for x in myresult:
            print("*" * 100)

            print(x)
            print("*" * 100)
        book_borrow_n = input("enter the name of book you wanted to borrow\n")
        code = input("please enter your national code \n")
        mycursor = mydb.cursor()
        sql = "SELECT mid FROM member WHERE n_code =" + code
        mycursor.execute(sql)
        memberID = mycursor.fetchall()

        sql2 = "INSERT INTO borrow (bid, mid) VALUES (%s, %s)"
        val2 = (book_borrow_n, memberID[0][0])
        mycursor.execute(sql2, val2)
        mydb.commit()
        print(mycursor.rowcount, "record inserted.")