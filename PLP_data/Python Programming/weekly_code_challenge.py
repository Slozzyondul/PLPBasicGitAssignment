'''#Write a program that accepts user input to create a list of integers. Then, compute the sum of all the integers in the list.
numbers = []
name = input("enter your name")
value = []
while True:
    values = int(input("enter a number(enter 100 to stop): "))
    if values == 100:
        break
    numbers.append(values)
print("here is your list: ", numbers,name)
'''
'''
#Create a tuple containing the names of five of your favorite books. Then, use a for loop to print each book name on a separate line.
fav_books = ('hidden agendas', 'the holy bible', 'what is the gospel')
for x in fav_books:
    print(x)

'''

'''
personal_details = {}
personal_details['name'] = input("enter your name")
personal_details['age'] = int(input("enter your current age"))
personal_details['favorite_color'] = input("enter your favorite color")

print("personal information:")
print(personal_details)
'''
'''
#Write a program that accepts user input to create two sets of integers. Then, create a new set that contains only the elements that are common to both sets.
numbers1 = []
value1 = []
while True:
    values1 = int(input("enter a number(enter 100 to stop): "))
    if values1 == 100:
        break
    numbers1.append(values1)
    print("here is your list1: ", numbers1)

numbers2 = []
value2 = []
while True:
    values2 = int(input("enter a number(enter 100 to stop): "))
    if values2 == 100:
        break
    numbers2.append(values2)
    print("here is your list2: ", numbers2)


common_elements = numbers1 |numbers2

print("Common elements:", common_elements)
'''

word_list = ["apple", "banana", "orange", "kiwi", "grape", "pineapple", "blueberry"]
odd_length_words = [word for word in word_list if len(word) % 2 != 0]
print("Words with odd number of characters:", odd_length_words)
