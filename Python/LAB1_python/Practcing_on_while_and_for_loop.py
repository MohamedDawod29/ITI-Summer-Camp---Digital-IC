print ("\n\n\n##########################################################")
print ("###########################For Loop Section#####################")
print ("##########################################################\n\n\n")

Sum = 0
count = 0
average = 0
average_approx = 0
for i in[10,20,30,40,70,60]:
    Sum = Sum + i
    count = count + 1
    average = Sum / count
    average_approx = round(average)
print("average_approx = ",average_approx)
print("average = ",average)


print ("\n\n\n##########################################################")
print ("##########################################################\n\n\n")

x = 0
for i in[9,41,12,3,74,15]:
    x = i
    if (x > 20):
        print (x)
        

print ("\n\n\n##########################################################")
print ("###################While Loop Section#####################")
print ("##########################################################\n\n\n")

while (1):
    x = float (input ("Enter a number between 1.5 and 150 : "))

    while (x < 1.5) | (x > 150):
        print ("The entered number is incorrect!")
        x = float (input ("Please enter another number:"))
    