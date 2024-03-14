'''
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
'''

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
'''
#for loop in range
welcome = "Karibu PLP"
for i in range(5):
    print(welcome)

'''

'''
#for loop
colors = ["blue", "green", "white","yellow", "brown", "cream"]
color_i_want = "white"

for color in colors:
    if color == color_i_want:
        print("They have the color i want")
        break
    print(color)
'''

'''
#while loop
colors1 = ["blue", "green", "white", "yellow", "brown", "cream"]
decision_color= "cream"
length = len(colors1)
count = 0

while count < length:
    print(colors1[count])

    if colors1[count] == decision_color:
        print("your color is in the store")
        break
    count += 1
'''

'''
#nested loops
groups = [["paul","solo"], ["ahmed","abdi"],["ali","osama"]]
for group in groups:
    for name in group:
        print(name)
'''

#list comprehensions
nums = [4,5,6,7,-3,-3,4]
doubled = []

for num in nums:
    doubled.append(num * 2)
print(doubled)