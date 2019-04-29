hangman_pic = []
for i in range(1,6):
    file_name = "hangman_pic{}.txt".format(i)
    fp = open(file_name,"r")
    s = fp.read()
    hangman_pic.append(s)
for i in hangman_pic:
    print(i)
fp.close()