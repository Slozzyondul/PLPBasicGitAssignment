#Lambda functions are efficient whenever you want to create a function that will only contain simple expressions
#that is, expressions that are usually a single line of a statement.
#when you want to use the function once.
#function that will only contain simple expressions

'''snack = lambda : print("njugou")
snack()
'''

'''#A lambda function with arguments
def num_squar(num):
    return num  ** 2
print("square of num is: ", num_squar(76))

#mofiy it with lambda
num_square = lambda num: num ** 2
print("Square of num is:", num_square(23))
'''

'''#palindrme (normal python function)
def isPalindrome(string):
    if (string == string[::-1]):
        return "a palindrome"
    else:
        return "not palindrome"
string = input("enter a word to test it out")
print(isPalindrome(string))

#palindrome using lambda function
isPalindrome1 = lambda string: "palindrome" if string == string[::-1] else "not palindrome"
string = input("enter a word to find out")
print(isPalindrome1(string))
'''
