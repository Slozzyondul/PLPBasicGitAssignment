String compliment(int number) {
  return '$number is very terrific number.';
}

// Return type = String
// Function name = compliment
// Parameter type = int
//Parameter name = number
//return value = words in quotes ''

/*
//1. function with no parameter and no return type
void printName() {
  print('Solomon_ondul');
}

void main() {
  //calling the void function
  printName(); //output = Solomon_ondul
}

// no parameteres and no return type (nothing in parameter list and no return type)
void printNamae() {
  print("Slozzy bas just started getting hoow dart operates");
}
*/

/*
//2. function with parameter and return type
void main() {
  // output the return value of printFullName
  print(printFullName("Solomon_Ondul"));
}

//having parameters and return values
String printFullName(String name) {
  return "Solomon is really enjoying dart so far";
}
*/

/*
//3. function with parameter and no return type
void main() {
  printName("Solomon");
}

//parameters and no return type
void printName(String name) {
  print("My name is $name");
}
*/

/*
//4. function with no parameter but has a return type
void main() {
  //assigning  function to a variable
  String name = printFullName();
  // print the value of the variable
  print(name);
}

// no parameter but there is return value
String printFullName() {
  return "Soloo";
}
*/

/*
//code of getter and setter in dart
class Person {
  String _name = ''; // Private variable

  // Getter method for retrieving the name
  String get name => _name;

  // Setter method for setting the name
  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      throw ArgumentError('Name cannot be empty');
    }
  }
}

void main() {
  var person = Person();
  // Using the setter
  person.name = 'Slozzy';

  // Using the getter
  print('Name: ${person.name}'); // Output: Name: Slozzy
  // Try to set an empty name, which will throw an exception
  try {
    person.name = "";
  } catch (e) {
    print('Error: $e'); // Output: Error: ArgumentError: Name cannot be empty
  }
}
*/

/*
//syntax of anonymous function
(parameters) {
  //body of anonymous fnction
}
*/

/*
//assingning anonymous function to a variable adding two vakues of double data types
void main() {
  // assigning anonymous function to a variable
  var sumofDoubles = (double x, double y) {
    return x + y;
  };
  //printing the value of sumofDouble
  print(sumofDoubles(20.5, 40.22));
}
*/

/*
//using anonymous function to print all list items
void main() {
  //list of cars
  List cars = ["bmw", "benz", "audi", "toyota"];

  //iteration with anonymous function as a parameter
  cars.forEach((item) {
    print(item); //printing an item
  });
}
*/

/*
//arrow function
//returnType functionName(parameters) => expression;

// => expr syntax is a shorthand for { return expr; }

//application of arrow  function
void main() {
  print(increaseNumber(10));
  print(decreaseNumber(20));
}

//function1: increases the value by 1
int increaseNumber(int x) => x + 1;
//function2: decreases the value by 1
int decreaseNumber(int x) => x - 1;
*/

