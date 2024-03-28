class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

    def introduce(self):
        print(f"heya, my name is {self.name}, i am {self.age} years old and i am {self.gender}.")

# Create an instance of the Person class
person = Person("solo", 27, "male")

# Call the introduce method to display the person's information
person.introduce()
