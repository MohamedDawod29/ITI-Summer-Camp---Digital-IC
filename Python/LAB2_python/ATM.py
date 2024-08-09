
print ("Welcome to our bank")
Balance = 5000
PIN = int(input ("Please Enter your PIN CODE: "))
x = 1
while (x):
    if (PIN == 1234):
        while (x):
            print ("1-Withdraw\n2-Balance\n3-Fast Cash\n4-quit\n")
            process = int (input ("choose the process : "))
            
            if (process == 1):
                amount  = int(input ("the amount of withdraw it must be multiple of 100 : "))
                
                while (process == 1):
                    if ((amount % 100) == 0):
                        Balance = Balance - amount
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                        break
                    else:
                        print ("Invalid withdraw")
                        amount  = int(input ("the amount of withdraw it must be multiple of 100 : "))
            
            elif (process == 2):
                print ("Your balance  = ",Balance)
                
            elif (process == 3):
                print ("1-500\n2-1000\n3-5000\n4-10000\n5-500000\n")
                fast  = int(input ("Enter amount : "))
                if (fast == 1):
                    if (Balance < 500):
                        print ("invalid or sufficient balance")
                    else:
                        Balance = Balance - 500
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                elif (fast == 2):
                    if (Balance < 1000):
                        print ("invalid or sufficient balance")
                    else:
                        Balance = Balance - 1000
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                elif (fast == 3):
                    if (Balance < 5000):
                        print ("invalid or sufficient balance")
                    else:
                        Balance = Balance - 5000
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                elif (fast == 4):
                    if (Balance < 10000):
                        print ("invalid or sufficient balance")
                    else:
                        Balance = Balance - 10000
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                elif (fast == 5):
                    if (Balance < 50000):
                        print ("invalid or sufficient balance")
                    else:
                        Balance = Balance - 50000
                        print ("TRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\n")
                        print ("The remain balance = ",Balance)
                else:
                    print ("invalid input")
            
            elif (process == 4):
                print ("Thanks for dealing with us\n")
                x = 0
            else:
                print ("invalid process")
    else:
        print ("Invalid PIN")
        PIN = int(input ("Please Enter your PIN CODE: "))
    

            