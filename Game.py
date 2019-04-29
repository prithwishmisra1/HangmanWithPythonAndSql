__author__ = 'Prithwish Misra'
from random import *
from pymysql import *
from os import system


#class of game
class Game:
    __score = 0
    __player_name = ""
    __topic = ""
    __hint = ""
    __blanks = ""
    __answer= ""


    #print a new screen
    def print_screen(self):
        for i in range(20):
            print("\n")


    #to select a value for hint
    def get_values(self):
        con = connect("localhost","root","","hangman")
        cr = con.cursor()
        qry = "select count(*) from {}".format(self.topic)
        cr.execute(qry)
        k = cr.fetchone()
        i = k[0]
        id = randint(1,i)
        qry = "select name, hint from {} where id = {}".format(self.topic,id)
        cr.execute(qry)
        k = cr.fetchone()
        self.hint = k[1]
        self.answer = k[0]
        self.blanks = ""
        for i in range(len(self.answer)):
            if self.answer[i] != ' ':
                self.blanks += '-'
            else:
                self.blanks += ' '
        con.close()
        self.print_screen()


    #insert high score into database
    def insert_score(self,s):
        con = connect("localhost","root","","hangman")
        cr = con.cursor()
        qry = "insert into high_score VALUES('{}',{},'{}')".format(self.player_name, s, self.topic)
        cr.execute(qry)


    #printing a menu for the game
    def print_menu(self):
        fp = open("main_menu.txt","r")
        l = fp.read()
        print(l)
        i = int(input("Enter your choice: "))
        self.print_screen()
        return i


    #printing the high score list of players
    def print_high_scores(self):
        self.print_screen()
        con = connect("localhost","root","","hangman")
        cr = con.cursor()
        qry = "select * from high_score order by score desc"
        cr.execute(qry)
        if cr.rowcount > 0:
            print("NAME OF PLAYER:\tSCORE\tTOPIC")
            hs = cr.fetchall()
            for i in hs:
                for j in i:
                    print(j, end="\t")
                print("")
        con.close()

    #instantiating the game
    def game_play(self):
        hangman_pic = []
        wrong_answer_counter = 0
        for i in range(1, 6):
            file_name = "hangman_pic{}.txt".format(i)
            fp = open(file_name, "r")
            s = fp.read()
            hangman_pic.append(s)
            fp.close()
        while wrong_answer_counter < 5 and '-' in self.blanks:
            print("Your man: ")
            print(hangman_pic[wrong_answer_counter])
            print("Hint: "+self.hint)
            print(self.blanks)
            print(wrong_answer_counter)
            inp = input("Enter character for input: ")
            inp = inp.upper()
            if inp in self.answer:
                for i in range(len(self.answer)):
                    if self.answer[i] == inp:
                        s3 = self.blanks[:i:]+inp+self.blanks[i+1::]
                        self.blanks = s3
                        self.print_screen()
            elif not inp.isalpha():
                self.print_screen()
                print("Wrong input")
            else:
                wrong_answer_counter += 1
                self.print_screen()
                print("Wrong answer")
        else:
            if wrong_answer_counter == 5:
                print("Your man is dead. The answer was {}".format(self.answer))
            else:
                self.score += 1
                print("Correct answer! ")
        c = input("Do you want to continue playing? (Y/N): ")
        if c == 'y':
            pass
        else:
            self.insert_score(self.score)
            return c


    #selecting topic for game
    def select_topic(self):
        con = connect("localhost","root","","hangman")
        cr = con.cursor()
        qry = "show tables"
        cr.execute(qry)
        k = cr.fetchall()
        self.player_name = input("Enter your name: ")
        print("Enter your choice of hint: ")
        for i in range(len(k)):
            print("{}. {}".format(i+1, k[i][0]))
        inp = int(input())
        if inp in range(1,len(k)+1):
            self.topic = k[inp-1][0]
            self.score = 0
        else:
            print("Wrong choice entered")


ob = Game()
while True:
    k = ob.print_menu()
    if k == 1:
        ob.select_topic()
        while True:
            ob.get_values()
            c = ob.game_play()
            if c == 'N' or c == 'n':
                break
    elif k == 2:
        ob.print_high_scores()
    elif k == 3:
        print("Thank you for playing this game")
        break
    else:
        print("Wrong input")