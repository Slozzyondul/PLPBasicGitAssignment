/*void main() {
print("Hello World Welcome to Solomons world");
}*/

//Variables In Dart
/*void main() {
  // declaring variables
  String name = "Solomon"; //oughts to be in quotes
  String address = "Nairobi"; //string must be in quotes
  int age = 27; //whole numbers ie integers and double(storing floating numbers)
  num height = 6.2; //decimal numbers
  bool isMarried = false; //boolean

  // printing variables value
  print("Name is $name");
  print("Address is $address");
  print("Age is $age");
  print("Height is $height");
  print("Married Status is $isMarried");
}*/

/*
// create a functions that shows sum of two numbers
void main() {
  print(sumOfTwoNumbers(5, 7)); // Example usage: prints 12
}

int sumOfTwoNumbers(int num1, int num2) {
  return num1 + num2;
}*/

//Data Types in Dart(Numbers)

/*
void main() {
  //declaring variables
  int num1 = 100; // without decimal point.
  double num2 = 130.2; //with decimal point.
  num num3 = 50;
  num num4 = 50.4;



// for sum
  num sum = num1 + num2 + num3 + num4;

  // printi all the data out
  print("Num 1 is $num1");
  print("Num 1 is $num2");
  print("Num 1 is $num3");
  print("Num 1 is $num4");
  print("Sum is $sum");
}
*/

/*
// Data Types in dart(String)
void main() {
  //declaring Values
  String schoolName = "Solomon's School of home learning";
  String address = "Nairoobi, Kenya";
  // printing the results
  print("My School name is $schoolName and the address is $address");
}
*/

/*
// Data Types in dart(Boolean)
void main() {
  bool isMarried = true;
  print("Married Status: $isMarried");
}
*/

// Data Types in dart(Lists)
//void main() {
//List<String> friends = ["John", "Solo", "Peter"];
//print("value of names is $friends");
//print("Value of names[0] is ${friends[0]}"); //position/index 0
//print("Value of names[1] is ${friends[1]}"); //index 1
//print("Value of names[3] is ${friends[2]}"); //index 2

// dynamic lists
//void main() {
//List<dynamic> mixedList = [1, "solo", "PLP", true];
//print(mixedList);
//}

//printing a mixed map
//void main() {
//Map<String, dynamic> mixedmap = {
//"name": "solo",
//"age": 27,
//"isStudent": true
//};
//print(mixedmap);
//}
//print(friends);
//}

/*
// Data Types in dart(Maps)
void main() {
  //creating a map with string keys and int values
  Map<String, int> ages = {'Alice': 30, 'Solo': 27, 'Charlie': 35};
  print("Ages of students: $ages");
}
*/

// Data Types in dart(Runes)
//void main() {
//define a string with runes
//String runesString = "Runes in Dart: \u{1F600} \u{1F64B} \u{1F680} \u{0041}";

// print the string
//print(runesString);
//}

/*
//arthimetic operations using numbers
void main() {
  // declaring two numbers
  int num1 = 10;
  int num2 = 3;

  //performing arithmetic calculation
  int sum = num1 + num2; //addition
  int diff = num2 - num1; //unary minus
  int subtract = num1 - num2; //subtraction
  int mul = num1 * num2; // multiplication
  double div = num1 / num2; // division
  int div2 = num1 ~/ num2; // integer division
  int mod = num1 % num2; // show remainder

  // printing info
  print("The addition is $sum.");
  print("The unary is $diff.");
  print("The subtraction is $subtract");
  print("The multiplication is $mul.");
  print("The division is $div.");
  print("The integer division is $div2.");
  print("The modulus is $mod.");
}
*/

/*
import 'dart:io';

bool? checkBoolean(String input) {
  if (input == "true") {
    return true;
  } else if (input == "false") {
    return false;
  } else {
    return null;
  }
}

void main() {
  print("Enter true or false");
  String input = stdin.readLineSync()!;
  bool? userBoolean = checkBoolean(input.toLowerCase());
  if (userBoolean != null) {
    print("You entered: $userBoolean");
  } else {
    print("Invalid input");
  }
}
*/

// if statement outputs depending on a certain conditional expression