from pymysql import *
con = connect("localhost","root","","hangman")
cr = con.cursor()
while True:
    i = int(input("id: "))
    q = input("question: ")
    a = input("Answer: ")
    qry = "insert into india values({},'{}','{}')".format(i,a,q)
    cr.execute(qry)
    c = input()
    if c =='b':
        break
con.close()