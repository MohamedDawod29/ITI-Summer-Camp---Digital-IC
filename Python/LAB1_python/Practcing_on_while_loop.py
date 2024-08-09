while (1):
    x = float (input ("Enter a number between 1.5 and 150 : "))

    while (x < 1.5) | (x > 150):
        print ("The entered number is incorrect!")
        x = float (input ("Please enter another number:"))
    