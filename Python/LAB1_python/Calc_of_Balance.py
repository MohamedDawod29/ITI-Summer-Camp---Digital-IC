hours = int(input ("Enter the number of hours worked:"))
price = int (input ("please enter your rate/hour:"))
if (hours > 40):
    print("paid = ",hours*1.5*price)
else:
    print("paid = ",hours*price)