'''Create a function named large_power() that takes two parameters named base and exponent.

If base raised to the exponent is greater than 5000, return True, otherwise return False'''
#solution
def large_power(base, exponent):
    x = base
    y = exponent

    if x ** y > 5000:
        print("true")
    else:
        print("false")

large_power(3000, 2)


'''Create a function called divisible_by_ten() that has one parameter named num.

The function should return True if num is divisible by 10, and False otherwise. Consider using modulo operator % to check for divisibility.'''


def divisible_by_ten(num):
    if num%10 == 0:
        print("true")
    else:
        print("false")

x = int(input("enter an number: "))

divisible_by_ten(x)

