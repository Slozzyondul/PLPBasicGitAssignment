#oops

# Abstraction
from abc import ABC, abstractmethod
class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

# Class, Object, Encapsulation
class Circle(Shape):
    def __init__(self, radius):
        self.__radius = radius  # Encapsulated attribute
    def area(self):
        return 3.14 * self.__radius * self.__radius

# Inheritance
class Square(Shape):
    def __init__(self, side):
        self.__side = side  # Encapsulated attribute
    def area(self):
        return self.__side * self.__side

# Polymorphism
def print_area(shape):
    print("Area:", shape.area())

# Create objects and demonstrate polymorphism
circle = Circle(5)
square = Square(4)
print_area(circle)  # Output: Area: 78.5
print_area(square)  # Output: Area: 16


#Class Attributes
class Person:

    name = 'solo'

    #Class attribute

print(Person.name)

details=Person()
print(details.name)


#constructor 
#special name = __init__(), special parameter = self
#NB: The first parameter of each method in a class must be the self, which refers to the calling object. 
#However, you can give any name to the first parameter, not necessarily self.

#Example of how to define a constructor:
class Person:

    def __init__(self): # constructor method

        print('Constructor invoked')


#instance attributes
#Instance attributes are attributes or properties attached to an instance of a class. 
#Instance attributes are defined in the constructor.

class Person:
    nationality = 'Kenyan' #class attribute
    def __init__(self): #constructor
        self.name = "solo" #instance attribute
        self.age = 27 # instance attribute

p1= Person()
print(p1.age)

#setting attribute values
#name & age parameters passed in constructor
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

#passing instance attribute values in constructor
p2=Person('sloo', 27)
print(p2.name)

#setting default values of instance attributes
class Person:
    def __init__(self, name='slozzy', age=27):
        self.name=name
        self.age=age


#function/methods 
        
#deleting attribute, object, class
        
'''
deleting attribute

>>> std = Person('Mutemi', 65)

>>> del std.name # deleting attribute

>>> std.name

Traceback (most recent call last):

File "<pyshell#32>", line 1, in <module>

std.name

AttributeError: 'Person' object has no attribute 'name'



deleting object

>>> del std  # deleting object

>>> std.name  

Traceback (most recent call last):

File "<pyshell#32>", line 1, in <module>

std.name

NameError: name 'std' is not defined

﻿

deleting class

>>> del Person  # deleting class

>>> std = Person('Mutemi', 65)

Traceback (most recent call last):

File "<pyshell#32>", line 1, in <module>

std = Person()

NameError: name 'Person' is not defined



'''
        
#inheritance
#getting properties of the parent class into a child.

#single inheritance
#base/parent class
class Vehicle:
    def Vehicle_info(self):
        print('Inside Parent(Vehicle) class')
#child class
class Car(Vehicle):
    def car_info(self):
        print('Inside Child(car) class')
#create object of car
car = Car()
#access vehicle's info using car object
car.Vehicle_info()
car.car_info()



#multiple inheritance
#one child inherits from multiple parent classes
#parent class 1
class Person:
    def person_info(self, name, age):
        print('Inside person class')
        print('name:', name, 'age:', age)
#parent class 2
class Company:
    def company_info(self, company_name, location):
        print('inside company class')
        print('name:', company_name, 'location:', location)
#child class
class Employee(Person, Company):
    def Employee_info(self, salary, skill):
        print('inside employee class')
        print('salary:', salary, 'skill:', skill)
#create object of employee
emp = Employee()
#access data
emp.person_info('slozzy', 28)
emp.company_info('google', 'nairobi')
emp.Employee_info(12000, 'engineer')



#multilevel inheritance
#child inherits from parents, parents inherits from grandparent
#base class
class Vehicle:
    def Vehicle_info(self):
        print('inside vehicle class')
#child class
class Car(Vehicle):
    def car_info(self):
        print('inside car class')
#child class
class SportsCar(Car):
    def sports_car_info(self):
        print('inside sportscar class')
#create object of sportscar
s_car = SportsCar()
#accessing vehicle's and car info using sportscar object
s_car.Vehicle_info()
s_car.car_info()
s_car.sports_car_info()


#hierarchical inheritance
#multiple derived child classes from a single parent class
class Vehicle:
    def info(self):
        print('this is vehicle')
class Car(Vehicle):
    def car_info(self, name):
        print('car name is:', name)
class Truck(Vehicle):
    def truck_info(self, name):
        print('truck name is:', name)
obj1 = Car()
obj1.info()
obj1.car_info('bmw')
obj2 = Truck()
obj2.info()
obj2.truck_info('ford')

#hybrid inheritance
#Here we can have many relationships between parent and child classes with multiple levels.
class Vehicle:
    def vehicle_info(self):
        print('inside vehicle class')
class Car(Vehicle):
    def car_info(self):
        print('inside car class')
class Truck(Vehicle):
    def truck_info(self):
        print('inside truck class')
#sports car can inherits properties of vehicle and car
class SportsCar(Car, Vehicle):
    def sports_car_info(self):
        print('inside sportscar class')
#create object
s1_car= SportsCar()
s1_car.vehicle_info()
s1_car.car_info()
s1_car.sports_car_info()

#python super() function
class Company:
    def company_name(self):
        return 'google'
class Employee(Company):
    def info(self):
        #calling the superclass method using super()function
        c_name = super().company_name()
        print('solo works at', c_name)
#creating object of the child class
emp = Employee()
emp.info()


#issubclass()
#built-in function issubclass(). This function returns True if the given class is the subclass of the specified class. 
#Otherwise, it returns False.
class Company:
    def fun1(self):
        print('inside parent class')
class Employee(Company):
    def fun2(self):
        print('inside child class')
class Player:
    def fun3(self):
        print('inside player class')
print(issubclass(Employee, Company))
print(issubclass(Player, Company))

#python modifiers
#Public Members -accessible outside the class and with the help of objects the public methods can be invoked inside the class.
#public attributes
class Students:
    schoolName = 'PLP academy' #class attribute
    def __init__(self, name, age):
        self.name=name #instance attribute
        self.age=age #instance attribute
#how to access public members
std = Students('soloo', 27)
print(std.schoolName)


#protected members 
#accessible from within the class and are also available to its subclasses
#to make an instance variable protected you add a prefix _ (single underscore) to it. 
#This effectively prevents it from being accessed unless it is from within a sub-class.
class Student:
    _schoolName = 'home school' #protected class attribute
    def __init__(self, name, age):
        self._name=name #protected instance attribute
        self._age=age #protected instance attribute
#access protected members
std= Student('leman', 28)
print(std._name)


#private members
#You can make an instance variable or method private by using the double underscore __, like:
class Student:
    __schoolName = 'home sch' #private class attribute
    def __init__(self, name, age):
        self.__name=name #private instance attribute
        self.__salary=age #private instance attribute
    def __display(self): #prvate method
        print('this is private method')
std = Student('soolo', 27)
print(std._Student__name)
