//a computer programming model that organizes software design around data, or objects, rather than functions and logic.
//components of OOP
//constructor

/*
//default constructor
class MyDetails() {
  //default constructor
  MyDetails() {
    //initialization code, if needed
  }
}
*/

/*
//parameterized constructors - allow to pass a value during object creation
//allowing the initialization instance variables with specific values

// define a class named dog
class Dog {
  // declare instance variables for name, age and breed
  String name;
  int age;
  String breed;

  // parameterized constructor for the dog class
  Dog(this.name, this.age, this.breed);

  //method/function to make the dog bark
  void bark() => print("$name barks!");

  //method to simulate the dog eating
  void eat() => print("$name is eating");

  //method to simulate the dog sleeping
  void sleep() => print("$name is sleeping");
}

//main function
void main() {
  //create an instance (an object) of the dog class named mydog
  Dog myDog = Dog("Bruno", 3, "German-sherphard");

  //print information about the dog (name, age, breed)
  print("name: ${myDog.name}, age: ${myDog.age}, breed: ${myDog.breed}");

  //call the bark method of the dog class
  myDog.bark();

  //call the eat method of the dog class
  myDog.eat();
  // call the sleep method of dog class
  myDog.sleep();
}
*/

/*
//data encapsulation - class' implementation details hidden from the user through an object's functions.
//Declaring the class properties as private by using underscore(_).
//Providing public getter and setter methods to access and update the value of private property.

class Circle {
// Private variable

  double _radius;
//double radius;

// Constructor

  Circle(this._radius);

// Getter for the radius

  double get radius => _radius;

// Setter for the radius with validation

  set radius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print('Invalid radius. It must be greater than 0.');
    }
  }

// Method to calculate the area

  double calculateArea() {
    return 3.14 * _radius * _radius;
  }
}

void main() {
// Create an instance/object  of the Circle class

  Circle myCircle = Circle(5.0);

// Access the radius using the getter

  print('Initial Radius of the Circle: ${myCircle.radius}');

// Update the radius using the setter(for updates)

  myCircle.radius = 7.0;

// Access the updated radius and calculate the area

  print('Updated/New  Radius: ${myCircle.radius}');

  print('Area: ${myCircle.calculateArea()}');
}
*/

/*
//inheritance - process of gaining properties

//PARENT CLASS VEHICLE

class Vehicle {
//PROPERTIES OF THE VEHICLE
  String brand;

  int year;
// CONSTRUCTOR HAVING THE VEHICLE'S PROPERTIES
  Vehicle(this.brand, this.year);

  void displayInfo() {
    print('Vehicle Information is : $year $brand');
  }
}

//INHERITANCE BEGINS
// Derived class (inherits from Vehicle)

class Car extends Vehicle {
// CHILD PROPERTIES
  String model;
//CHILD CONSTRUCTOR
  Car(String brand, this.model, int year) : super(brand, year);

// method showing childs information
  void displayCarInfo() {
    print('Car Information is : $year $brand $model');
  }
}

void main() {
// Create an instance/object  of the Car class

  Car myCar = Car('Toyota', 'Camry', 2022);

// Access and display information using methods from both Vehicle and Car classes

  myCar.displayInfo();

  myCar.displayCarInfo();
}
*/

/*
//polymorphism - having many classes use the same method name while redefing it for the derived classes.
// Base class
class Animal {
  void makeSound() {
    print('Some generic animal sound');
  }
}
// Derived class 1
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}
// Derived class 2
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
// Create instances of the derived classes

  Animal genericAnimal = Animal();

  Dog myDog = Dog();

  Cat myCat = Cat();

// Polymorphism in action

// The same method is called on different types of objects

  genericAnimal.makeSound(); // Output: Some generic animal sound

  myDog.makeSound(); // Output: Woof!

  myCat.makeSound(); // Output: Meow!
}
*/

/*
//abstraction - user’s interaction with just a subset of an object’s characteristics and operations
// Abstract class

abstract class Shape {
// Abstract method to calculate area

  double calculateArea();

// Concrete method

  void printInfo() {
    print('This is a shape.');
  }
}

// Concrete class 1

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Concrete class 2

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
// Create instances of concrete classes

  Circle myCircle = Circle(5.0);

  Rectangle myRectangle = Rectangle(4.0, 6.0);

// Use the common interface provided by the abstract class

  print('Circle Area: ${myCircle.calculateArea()}');

  print('Rectangle Area: ${myRectangle.calculateArea()}');

// Concrete method from the abstract class

  myCircle.printInfo();

  myRectangle.printInfo();
}
*/

/*
//factory methods
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  // Factory method to create circles with different radii
  factory Circle.create(double radius) {
    if (radius <= 0) {
      throw ArgumentError('Radius must be positive.');
    }
    return Circle(radius);
  }

  // Method to calculate the area of the circle
  double calculateArea() {
    return pi * radius * radius;
  }
}

void main() {
  // Creating circles using the factory method
  var circle1 = Circle.create(5);
  var circle2 = Circle.create(7.5);

  // Calculating and printing the area of each circle
  print('Area of Circle 1: ${circle1.calculateArea()}');
  print('Area of Circle 2: ${circle2.calculateArea()}');
}
*/

/*
// sigleton pattern
class FileSystemManager {
  // Static final variable to hold the single instance of the class
  static final FileSystemManager _instance = FileSystemManager._internal();

  // Private constructor for initialization logic
  FileSystemManager._internal() {
    // Initialization logic here
    print("Singleton instance created.");
  }

  // Factory constructor ensures only one instance is returned
  factory FileSystemManager() {
    return _instance;
  }

  void openFile() {
    print("File opened.");
  }

  void writeFile() {
    print("File written.");
  }
}

void main() {
  // Creating instances of FileSystemManager
  FileSystemManager manager1 = FileSystemManager();
  FileSystemManager manager2 = FileSystemManager();

  // Both instances will reference the same singleton instance
  print(manager1.hashCode == manager2.hashCode); // Output: true

  // Using methods of FileSystemManager
  manager1.openFile(); // Output: File opened.
  manager2.writeFile(); // Output: File written.
}
*/