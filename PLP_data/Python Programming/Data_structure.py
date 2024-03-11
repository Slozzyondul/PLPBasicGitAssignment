#list
numbers = [1,2,3,4,5,6,67,7]
print(numbers)

#a list of different data types
my_list = [1,2,"you", 23.3232, 8]
print(my_list)

#access elements of an array using the index number (0, 1, 2 …).
languages = ["pytho", "dart", "sql"]
print(languages[1])

#slicing a list
our_list = ['i','h','sd','z','c','y','d','j','g','n']
print(our_list[-3])
print(our_list[2:5])

#append() method adds an item at the end of the list.
num = [21,34,554,565,5765,7868,565756]
print("before append:", num)
num.append("solo")
print("after append:", num)

#extend() method to add all items of one list to another. For example,
prime = [2,3,5]
print("list1:", prime)
even = [4,6,8]
print("list2:", even)

prime.extend(even)
print("list after extend:", prime)

#Python lists are mutable. Meaning lists are changeable.
languages[1] = 'c'
print(languages)


#we can use the del statement to remove one or more items from a list.
language1 = ['python','swift','c++','c','java','rust','r']
del language1[-1]
print(language1)

#remove() method to delete a list item.
language1.remove('python')
print(language1)

#for loop to iterate over the elements of a list
for x in language1:
    print(x)

#Python List Comprehension
#numbers2 = [x*x for x in range(1,10000000000)]
#print(numbers2)

#tuple methods
my_tuple = ('w','e','d','f','v','h','i','k','p','l','p',)
print(my_tuple.count('p'))
print(my_tuple.index('h'))

#dictionaries
capital_city = {"nepal":"kathmandu", "italy":"rome", "kenya":"nairobi"}
print(capital_city)

print("initial dictionary: ", capital_city)

capital_city["japan"] = "tokyo"
print("updated dictionary: ", capital_city)

#Dictionary Membership Test
squares = {1:1, 3:9, 8:64, 4:16}
print(1 in squares)
print(2 not in squares)

#set
student_id ={11,12,34,5,56}
print(student_id)

#add items to a set 
student_id.add(2323)
print('updated:', student_id)

#updting sets
tech = ['apple','google','apple']
student_id.update(tech)
print(student_id)

#discard = removing an item from a set

#union
a = {2,4,5,6}
b = {6,7,8,8,8,6,5,6}
print('union using |:', a|b)

#intersection
print('intersection using &:', a & b)

#difference
print('difference using -:', a - b)

#symmetric difference
print('using ^:', a ^ b)
