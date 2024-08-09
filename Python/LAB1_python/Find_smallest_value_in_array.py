x = [9,41,12,3,74,15]
smallest_value = x[0]
for i in x:
    if (i < smallest_value):
        smallest_value = i
    else:
        smallest_value = smallest_value
        
print (smallest_value)