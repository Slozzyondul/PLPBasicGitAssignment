import 'dart:io';
import 'dart:math';

void main() {
  print("FX-82 solo calc");

  double memory = 0; // Initialize memory variable.

  while (true) {
    print("Enter the first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    print("Enter the second number (if needed, press Enter to skip): ");
    String? input = stdin.readLineSync();
    double num2 = input == null || input.isEmpty ? 0 : double.parse(input);

    print("Select an operation:");
    print("1. Addition (+)");
    print("2. Subtraction (-)");
    print("3. Multiplication (*)");
    print("4. Division (/)");
    print("5. Square Root");
    print("6. Exponentiation");
    print("7. Sine");
    print("8. Cosine");
    print("9. Tangent");
    print("10. Natural Logarithm");
    print("11. Common Logarithm");
    print("12. Factorial (!)");
    print("13. Modulus (%)");
    print("14. Bitwise AND (&)");
    print("15. Bitwise OR (|)");
    print("16. Bitwise XOR (^)");
    print("17. Bitwise NOT (~)");
    print("18. Memory Recall (MR)");
    print("19. Memory Store (MS)");
    print("20. Memory Clear (MC)");
    print("21. Percentage (%)");
    print("22. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    double result;

    switch (choice) {
      case 1:
        result = num1 + num2;
        break;
      case 2:
        result = num1 - num2;
        break;
      case 3:
        result = num1 * num2;
        break;
      case 4:
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          print("Error: Division by zero is not allowed.");
          continue;
        }
        break;
      case 5:
        result = sqrt(num1);
        break;
      case 6:
        result = pow(num1.toInt(), num2.toInt()).toDouble();
        break;
      case 7:
        result = sin(num1);
        break;
      case 8:
        result = cos(num1);
        break;
      case 9:
        result = tan(num1);
        break;
      case 10:
        result = log(num1);
        break;
      case 11:
        result = log(num1) / ln10;
        break;
      case 12:
        result = factorial(num1);
        break;
      case 13:
        result = num1 % num2;
        break;
      case 14:
        result = (num1.toInt() & num2.toInt()).toDouble();
        break;
      case 15:
        result = (num1.toInt() | num2.toInt()).toDouble();
        break;
      case 16:
        result = (num1.toInt() ^ num2.toInt()).toDouble();
        break;
      case 17:
        result = (~num1.toInt()).toDouble();
        break;
      case 18: // Memory Recall (MR)
        result = memory;
        break;
      case 19: // Memory Store (MS)
        memory = num1;
        print("Number stored in memory.");
        continue; // Restart the loop without performing any calculation.
      case 20: // Memory Clear (MC)
        memory = 0;
        print("Memory cleared.");
        continue; // Restart the loop without performing any calculation.
      case 21: // Percentage (%)
        result = num1 * (num2 / 100);
        break;
      case 22: // Exit
        print("Goodbye!");
        return;
      default:
        print("Invalid choice. Please enter a number between 1 and 22.");
        continue; // Restart the loop without performing any calculation.
    }

    print("Result: $result");
  }
}

double factorial(double n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}
