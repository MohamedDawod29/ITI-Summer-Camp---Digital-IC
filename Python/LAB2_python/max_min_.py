list = [9]

list.append(7)
list.append(2)
list.append(8)
list.append(0)
print("list = ",list)
list.sort()
print("sorted list = ",list)
print("max_element = ",max(list))
print("max_element = ",min(list))
avg = sum(list)/len(list)
print("avg = ",avg)


while (1):
    x = float(input("Please enter a number: "))
    try:
        y = x / 2
        print("y = ",y)
    except:
        print("The input is invalid")
    else:
        print("Process Complete")
        