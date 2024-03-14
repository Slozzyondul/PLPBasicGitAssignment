#There are 68 built-in functions and they are listed here in alphabetical order.
#absolute value
x = abs(3- 12)
print(x)

#iterable true
#all()
#Returns True if every item in an iterable evaluates to True, otherwise, it returns False.

#any()
#Takes in an iterable object such as a list or tuple and r
#eturns True if any of the elements in the iterable are True. 
#If none of the elements in the iterable are True, returns False.

'''def outer_fun(a, b):
    def inner_fun(c, d):
        return c + d
    return inner_fun(a, b)

res = outer_fun(5, 10)
print(res)

for num in range(1, 5):
    print(num)


x = 0
for i in range(3):
    x = x + i
    '''
list1 = [3 , 2 , 5 , 6 , 0 , 7, 9]
sum = 0
sum1 = 0
for elem in list1:
    if (elem%2==0):
        sum = sum + elem
        continue
    if (elem%3==0):
        sum1 = sum1 + elem

print(sum)
print(sum1)



    