import 'dart:io';

void main() {
  //get user number input
  stdout.write("enter your number here please: ");
  // Read user input
  String b = stdin.readLineSync() ?? "";

  // Convert input to integer
  int a = int.tryParse(b) ?? 0;
  do {
    print("your number is greater than 10");
  } while (a > 10);

  do {
    print("your number is less than 10");
  } while (a < 10);
  do {
    print("your number is equal to 10");
  } while (a == 10);
}
