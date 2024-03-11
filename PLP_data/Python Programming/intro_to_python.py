#changing the value of a variable in python

site_name = 'Solo on PLP'
print(site_name)

#assigning a new value to the site_name
site_name = 'solo.com'
print(site_name)

#assigning multiple values to multiple variables
a, b, c = 5, 4.67, 'solo'
print(a)
print(b)
print(c)

#assigning same value to multiple variables at once
site1 = site2 = 'solo.com'
print(site1)
print(site2)

#numeric data type
num1 = 5 
num2 = 2.4847
num3 = 1+2j

print(num1, 'is of the data type', type(num1))
print(num2, 'is of the data type', type(num2))
print(num3, 'is of the data type', type(num3))

#list data type
languages = ["python", "SQL", "Dart", "JavaScript"]
#accesing list items
print(languages[0])
print(languages[3])

#Tuple data type
product = ('pS5', 4.5456)
print(product[1])

#string data type
message = 'python for beginner'
print(message)

#set data type
student_id = {32,21,134,3421,4124,4124,4123}
print(student_id)
print(type(student_id))

#Dictionary data type
captal_city = {'Nepal': 'Kathmandu', 'Kenya': 'Nairobi'}
print(captal_city)
print(captal_city['Nepal'])

#implicit conversion
integer_number = 123
float_number = 1.324
new_number = integer_number + float_number
print("Value:", new_number)
print("Data Type:", type(new_number))

#explicit type conversion
num_string = '131'
num_integer = 4235
print("Data type of num_string before Type Casting:", type(num_string))
num_string = int(num_string)
print("Data type of num_string after Type Casting:", type(num_string))
new_sum = num_integer + num_string
print("Sum:", new_sum)
print("Data type of num_sum:", type(new_sum))

#arthimetic operators
a1 = 5+76 #addition
a2 = 76768-23 #subtraction
a3 = 323*2342 #multiplication
a4 = 45356/4 #division
a5 = 10//3 #floor division
a6 = 5%2 #modulo
a7 = 3**33 #power
print(a1)
print(a2)
print(a3)
print(a4)
print(a5)
print(a6)
print(a7)


# printing with end pwhitespace
print('Good Morning!', end= ' ')
print('It is rainy today')

