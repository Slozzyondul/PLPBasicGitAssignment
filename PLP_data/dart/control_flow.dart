//control flow structures in dart
//if statement
// if statement outputs depending on a certain conditional expression
/*void main() {
  var age = 12;
  if (age > 18) {
    print("You are a voter in Kenya given your current entered age");
  }
}
*/

//If-else Statements

/*
void main() {
  var age = 20;
  if (age > 18) {
    print("Mariam is a voter in Kenya");
  } 
  else {
    print("Mariam is still young to vote");
  }
}
*/

/*void main() {
  int i = 1;
  switch (i) {
    case 1:
      print("The value is 1");
      break;
    case 2:
      print("The value is 2 ");
      break;
    case 3:
      print("the value is 3");
      break;
    default:
      print("The value is out of range ");
      break;
  }
}
*/

/*
import 'dart:io';

void main() {
  // Display menu options
  print("Menu:");
  print("1. KBC");
  print("2. Metro");
  print("3. K24");
  print("4. E Tv");
  print("5. Exit");

  // Get user input for menu selection
  stdout.write("Enter your choice: ");
  String input = stdin.readLineSync() ?? ""; // Read user input

  // Convert input to integer
  int choice = int.tryParse(input) ?? 0;

  // Process menu selection
  switch (choice) {
    case 1:
      print("You selected KBC");
      break;
    case 2:
      print("You selected Metro");
      break;
    case 3:
      print("You selected K24");
      break;
    case 4:
      print("You selected E Tv");
      break;
    case 5:
      print("Exiting...");
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      break;
  }
}
*/

