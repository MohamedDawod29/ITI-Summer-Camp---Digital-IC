Master = int(input ("If you have a master enter 1 if no enter 0:"))
MBA = int(input ("If you have a mba enter 1 if no enter 0:"))
GPA = float(input ("Enter your GPA:"))
Experience = int (input ("Enter number of your experience years:"))

if MBA:
    if Master:
        if (GPA > 3.8) & (Experience > 15):
            print ("YOU ARE A MANAGER")
        else:
            print ("YOU ARE  not categorized ")
else:
    if Master:
        if (GPA > 3.6) & (Experience > 10) & (Experience <= 15):
            print ("YOU ARE A Staff_senior")
        else:
            print ("YOU ARE  not categorized ")
    else:
        if (GPA > 3.6):
            if (Experience > 5) & (Experience <= 10):
                print ("YOU ARE A Senior")
            else:
                print ("YOU ARE  not categorized ")
        elif (GPA > 3.4):
            if (Experience > 5) & (Experience <= 10):
                print ("YOU ARE A TeamleaderSenior")
            else:
                print ("YOU ARE  not categorized ")
        elif ( GPA > 3):
            if (Experience > 1):
                print ("YOU ARE A Standard")
            else:
                print ("YOU ARE  not categorized ")
        elif (GPA > 2.5):
            if (Experience < 1):
                print ("YOU ARE A junior")
            else:
                print ("YOU ARE  not categorized ")
        else:
            print ("YOU ARE  not categorized ")
        
            
        
        1
        
    