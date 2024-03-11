#decision making statements (the IF Statements)
marks = int(input("Enter marks"))
result = ""
if marks < 30:
    result = "failed"
elif marks > 75:
    result = "Passed with distinction"
else:
    result = "passed"

print(result)


#decision making statements (the match statement)
def checkVowel(n):
    match n:
        case 'a': return "Vowel alphabet"
        case 'e': return "Vowel alphabet"
        case 'i': return "Vowel alphabet"
        case 'o': return "Vowel alphabet"
        case 'u': return "Vowel alphabet"
        case _: return "Simple alphabet"

print(checkVowel('a')) 
print(checkVowel('a'))   

#assignment
'''1. write a simple python programme that can rate students performance as follows;
	above 80= distinction
	60-70 = credit
	40-50 = fair
	below 40 = fail'''


'''2. create a simple calculator using python that can perform the following operations;
	add 2 numbers
	multiplication
	division
	subtraction'''
