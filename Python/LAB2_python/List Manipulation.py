Name = []
Salary = []
Dep = []
ID = []

N = int(input("Please enter the number of employees: "))
for i in range (N):
    Name.append (input ("Please enter name of employee : "))
    
for i in range (N):
    Salary.append (int(input ("Please enter salary of employee : ")))
    
for i in range (N):
    Dep.append (input ("Please enter Dep of employee : "))
    
for i in range (N):
    ID.append (int(input ("Please enter ID of employee : ")))
    

count = 0
search_name = input ("Please enter the name you need to find: ")

for i in range (N):
    if (Name[i] == search_name):
        count = count + 1
    else:
        count = count
        
  
if count == 0:
      print (search_name,"is not founded")
else:
      for i in range (count):
          print (search_name,"is founded")
          
          
          
delete_num = int(input ("Please enter the number of employee you need to remove him: "))

del Name [delete_num]
del Salary [delete_num]
del Dep [delete_num]
del ID [delete_num]

print("Names = ",Name)
print("Salary = ",Salary)
print("Dep = ",Dep)
print("ID = ",ID)

