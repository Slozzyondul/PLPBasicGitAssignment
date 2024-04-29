/*
## Program 2: Perform Mathematical Operations with Functions
Write a Dart program that performs two mathematical operations using functions.
*/
//1. simple instance

/*
import 'dart:ffi';
import 'dart:io';

void main() {
  // Get user input for menu selection
  stdout.write("Enter your choice: ");
  String input = stdin.readLineSync() ?? ""; // Read user input

  // Convert input to integer
  int userNumber = int.tryParse(input) ?? 0;

  if (userNumber != nullptr) {
    int result = performOperation(userNumber);
    print("The result of the operation is: $result");
  } else {
    print("Invalid input. Please enter a valid integer.");
  }
}

int performOperation(int number) {
  // Example mathematical operation, you can replace this with any operation you want
  return number * 2 + 5;
}
*/
/*
import 'dart:ffi';
import 'dart:io';

void main() {
  stdout.write("Please enter the length of the sequence: ");
  String userInput = stdin.readLineSync() ?? "";

  // Convert user input to an integer
  int length = int.tryParse(userInput) ?? 0;

  if (length != nullptr && length > 0) {
    List<int> fibonacciSequence = generateFibonacciSequence(length);
    print("The Fibonacci sequence with length $length is: $fibonacciSequence");
  } else {
    print("Invalid input. Please enter a valid positive integer.");
  }
}

List<int> generateFibonacciSequence(int length) {
  List<int> sequence = [];

  if (length == 1) {
    sequence.add(0);
  } else if (length == 2) {
    sequence.addAll([0, 1]);
  } else {
    sequence.addAll([0, 1]);
    for (int i = 2; i < length; i++) {
      int nextNumber = sequence[i - 1] + sequence[i - 2];
      sequence.add(nextNumber);
    }
  }

  return sequence;
}
*/

/*

import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  stdout
      .write("enter the number of terms for Taylor series expansion: ");
  String userInput = stdin.readLineSync() ?? "";

  // Convert user input to an integer
  int numTerms = int.tryParse(userInput) ?? 0;

  if (numTerms != nullptr && numTerms > 0) {
    double x;
    do {
      stdout.write("Please enter the value of x for Taylor series expansion: ");
      userInput = stdin.readLineSync() ?? "";
      x = double.tryParse(userInput) ?? 0;
    } while (x == nullptr); // Loop until valid input for x is provided

    double result = calculateTaylorSeries(x, numTerms);
    print(
        "The result of Taylor series expansion for exp($x) with $numTerms terms is: $result");
  } else {
    print(
        "Invalid input. Please enter a valid positive integer for number of terms.");
  }
}

double calculateTaylorSeries(double x, int numTerms) {
  double result = 0;
  for (int n = 0; n < numTerms; n++) {
    result += pow(x, n) / factorial(n);
  }
  return result;
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n - 1);
}
*/


