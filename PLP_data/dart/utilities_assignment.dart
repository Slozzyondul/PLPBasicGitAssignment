// ignore_for_file: unused_local_variable

/*
//1. Create a function that takes two numbers as input and returns the sum of those numbers.

import 'dart:io';

void main() {
  // Get user input for menu selection
  stdout.write("Enter first number: ");
  String input1 = stdin.readLineSync() ?? ""; // Read user input

  // Convert input to integer
  int num1 = int.tryParse(input1) ?? 0;

  // Get user input for menu selection
  stdout.write("Enter second number: ");
  String input2 = stdin.readLineSync() ?? ""; // Read user input

  // Convert input2 to integer
  int num2 = int.tryParse(input2) ?? 0;

  int s = num1 + num2;
  print("the sum is: ${s}");
}
*/

/*
//2. Write a program that uses a for loop to print out the numbers from 1 to 10.
void main() {
  List int;
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var x in numbers) {
    print(x);
  }
}
*/

/*
//3. Create a program that uses a switch statement to check for different string values and output a response based on the value.
import 'dart:io';
void main() {
  // Display menu options
  print("pick your next opponent:");
  print("1. solo");
  print("2. metro");
  print("3. ondul");
  print("4. ona");
  print("5. wewe");

  // Get user input for menu selection
  stdout.write("enter the rank of the opponent you prefer to face next: ");
  String input = stdin.readLineSync() ?? ""; // Read user input

  // Convert input to integer
  int choice = int.tryParse(input) ?? 0;

  // Process menu selection
  switch (choice) {
    case 1:
      print("congratulations! match scheduled with solo");
      break;
    case 2:
      print("congratulations! match scheduled with metro");
      break;
    case 3:
      print("congratulations! match scheduled with ondul");
      break;
    case 4:
      print("congratulations! match scheduled with ona");
      break;
    case 5:
      print("congratulations! match scheduled with wewe");
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      break;
  }
}
*/

/*
//4. Create a program that uses a while loop to print out the numbers from 20 to 10.

void main() {
  List<int> numbers = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10];
  var index = 0;
  while (index < numbers.length) {
    print(numbers[index]);
    index++;
  }
}
*/

/*
//5. Create a program that uses an if-else statement to check if a number is even or odd and output the result.
import 'dart:io';

void main() {
  // Get user input for menu selection
  stdout.write("enter a number you wish to find out: ");
  String input = stdin.readLineSync() ?? ""; // Read user input

  // Convert input to integer
  int num = int.tryParse(input) ?? 0;
  if (num % 2 == 0) {
    print("this was an even number!");
  } else {
    print("the number you entered last was an odd number");
  }
}
*/

/*
//6. Create a program that takes a list of numbers as input and outputs the largest number in the list.
import 'dart:io';

void main() {
  List<int> numbers = [];
  int largest = -1; //initializing largest to a negative number
  while (true) {
    stdout.write("enter a new number or 'q' to quit: ");
    String input = stdin.readLineSync() ?? "";
    if (input.toLowerCase() == 'q') {
      break;
    }
    int num = int.tryParse(input) ?? 0;
    numbers.add(num);
    //updating the largest number if not current
    largest = (num > largest) ? num : largest;
  }
  print("here is your list of numbers: ");
  for (int number in numbers) {
    print(number);
  }
  if (largest != -1) {
    //check if any  numbers greater than this were entered
    print("the largest number you entered was $largest");
  } else {
    print("no values were entered");
  }
}
*/


/*
//7. Write a program that uses a try-catch block to catch an exception and output an error message.
import 'dart:io';

void main() {
  List<int> numbers = [];
  int largest = -1; // initializing largest to a negative number

  while (true) {
    stdout.write("enter a new number: ");
    String input = stdin.readLineSync() ?? "";

    try {
      int num = int.parse(input); // Attempt to convert to int
      print("you entered: $num");

      // Add the number to the list
      numbers.add(num);

      // Update the largest number if the new number is greater
      largest = (num > largest) ? num : largest;
    } catch (e) {
      // Handle the exception if conversion fails
      if (input.isNotEmpty) {
        print("invalid input: '$input'. please enter a number.");
      }
      break; // Exit the loop if input is not numeric
    }
  }

  print("here is your list of numbers:");
  for (int number in numbers) {
    print(number);
  }

  if (largest != -1) {
    print("the largest number you entered was $largest");
  } else {
    print("no values were entered");
  }
}
*/