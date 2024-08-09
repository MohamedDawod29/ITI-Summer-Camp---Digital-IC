f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")


print ("line 1 = ",f.readline())
f.close()
f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")
print ("line 2 = ",f.readline())
f.close()
f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")
print ("first 10 ch = ",f.read(10))
f.close()
f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")
print("all file : ",f.read())
f.close()
f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")

#read all characters
for i in f:
    for x in i:
        print(x)
  
    
#read all lines by line
f.close()
f = open("C:/Users/muhmd/OneDrive/Desktop/Lab2_python/read.txt","r")
    
print (f.readlines())