'''
#local scope
#Anything outside of this function will not have access to it.

def add_nums(a,b):
    answer = a + b
    return answer
print(add_nums(10,34))
'''

'''
#enclosing scope/nested function. 
def add_nums(a,b):
    answer = a + b
    def double_it():
        double = answer * 2
        print(answer)
        print(double)
    double_it()
    return answer
print(add_nums(3,9))

'''

'''#global scope
#can be accessed from anywhere In the code below

global_var = 13

def add_nums(a,b):
    total = a + b
    print("global_var in outer function: ", global_var)
    def double_it():
        double = total * 2
        print("global_var in inner function:", global_var)
        print("double: ", double)
    double_it()
    return total
add_nums(34,7)
'''
#built-in scope
#keywords that Python uses for its built-in functions, such as print, def, for, in,..