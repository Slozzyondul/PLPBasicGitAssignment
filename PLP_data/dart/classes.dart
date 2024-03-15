/*
//properties/attributes
class Dog {
  String breed;
  String color;
  String origin;
  bool gender;

  // constructor
  Dog(this.breed, this.color, this.origin, this.gender);

  // methods/behaviours
  void bark() {
    print('who! whoo! whooo!');
  }

  void run() {
    print('the dog is running');
  }

  void speak() {
    print('i cannot speak i am a dog!');
  }
}

//creating an instance of the dog class/object
void main() {
  var myDog = Dog('alcacian', 'golden', 'nairobian', true);

  //accessing properties/attributes/characteristics
  print('breed: ${myDog.breed}');
  print('clour: ${myDog}');
  print('origin: ${myDog}');
  print('gender: ${myDog.gender}');

  //calling methods
  myDog.bark();
  myDog.run();
  myDog.speak();
}
*/

/*
//properties
class Person {
  String name;
  String phone;
  bool isMarried;
  int age;

  //constructor
  Person(this.name, this.phone, this.isMarried, this.age);

  //method to display information
  void displayInfo() {
    print('name: ${name}');
    print('phone: ${phone}');
    print('marital status: ${isMarried ? 'married' : 'single'}');
    print('age: $age');
  }
}

//creating an instance of the person class
void main() {
  var person = Person('solo', '+254792352745', false, 27);
  // calling the displayinfo method to print information
  person.displayInfo();
}
*/


/*
//class area
//properties
class Area {
  double length;
  double width;

  // constructor
  Area(this.length, this.width);

  //method to calculate area
  double calculateArea() {
    return length * width;
  }
}

void main() {
  //creating an instance of the area class
  var rectangle = Area(23, 423);

  //calculating and printing the area
  print('area of the rectangle: ${rectangle.calculateArea()} square units');
}
*/
