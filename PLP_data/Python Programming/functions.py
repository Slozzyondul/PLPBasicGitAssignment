'''
#args(arbitrary arguments)
#If you do not know how many arguments that will be passed into your function, add a * 
def add_nums(*nums):
    sum = 0
    for num in nums:
        sum += num
    return sum
print("Total:", add_nums(2,3,5,5))

'''
'''
#**kwargs(arbitrary keyword arguments)
#keyword arguments to be passed in a function are not known
def add_ages(**ages):
    sum = 0
    for k, v in ages.items():
        sum += v
    return sum
print("Total: ", add_ages(mutemi=22, solo=27, ahmed=25))
'''

'''
#local scope function
def add_nums(a,b):
    answer = a + b
    return answer
print(add_nums(7,3))
'''

'''#enclosing scope/nested function
def add_nums1(a,b):
    answer = a + b
    def double_it():
        double = answer * 2
        print(double)
    double_it()
    return answer
print(add_nums1(4,8))
'''

'''
#global scope
#variable is declared outside of a function. This means it can be accessed from anywhere.

global_var = 13
def add_nums2(a,b):
    total = a + b 
    print("Global_var in outer function: ", global_var)
    def double_it1():
        double = total * 2
        print("Global_var in inner function: ", global_var)

    double_it1
    return total
add_nums2(12,7)

'''

#args(arbitrary arguments)
#If you do not know how many arguments that will be passed into your function, add a * 
nums = int(input("Enter an integer "))
s = []
if nums == 0:
   s.append(nums)


def add_nums(*s):
    sum = 0
    for num in s:
        sum += num
    return sum
print("Total:", add_nums(s))
