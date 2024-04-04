import 'dart:math';
import 'dart:io';

void main() {
  print("Taylor Series Calculator");

  while (true) {
    print("Enter the function expression (e.g., sin(x), cos(x)): ");
    String expression = stdin.readLineSync()!;
    print("Enter the center point of the series expansion: ");
    double center = double.parse(stdin.readLineSync()!);
    print("Enter the degree of the Taylor series (number of terms): ");
    int degree = int.parse(stdin.readLineSync()!);
    print("Enter the value of x to approximate: ");
    double x = double.parse(stdin.readLineSync()!);

    try {
      double result = taylorSeries(expression, center, degree, x);
      print("Approximated value: $result");
    } catch (e) {
      print("Error: $e");
    }

    print("Do you want to continue? (yes/no): ");
    String continueChoice = stdin.readLineSync()!;
    if (continueChoice.toLowerCase() != 'yes') {
      print("Exiting...");
      break;
    }
  }
}

double taylorSeries(String expression, double center, int degree, double x) {
  // Initialize the result to the value of the function at the center
  double result = evaluateFunction(expression, center);

  // Iterate through terms of the Taylor series
  for (int n = 1; n <= degree; n++) {
    // Calculate nth derivative of the function at the center
    double derivative = evaluateNthDerivative(expression, center, n);
    // Calculate the nth term of the Taylor series and add it to the result
    result += (derivative * pow(x - center, n)) / factorial(n);
  }

  return result;
}

double evaluateFunction(String expression, double x) {
  // Evaluate the given expression at the specified value of x
  // For simplicity, let's assume supported functions are sin(x), cos(x), etc.
  switch (expression) {
    case 'sin(x)':
      return sin(x);
    case 'cos(x)':
      return cos(x);
    default:
      throw ArgumentError("Unsupported function: $expression");
  }
}

double evaluateNthDerivative(String expression, double x, int n) {
  // Evaluate the nth derivative of the given expression at the specified value of x
  // For simplicity, let's assume supported functions are sin(x), cos(x), etc.
  switch (expression) {
    case 'sin(x)':
      // The nth derivative of sin(x) is sin(x + n * pi / 2)
      return sin(x + n * pi / 2);
    case 'cos(x)':
      // The nth derivative of cos(x) is cos(x + (n - 1) * pi / 2)
      return cos(x + (n - 1) * pi / 2);
    default:
      throw ArgumentError("Unsupported function: $expression");
  }
}

double factorial(int n) {
  // Calculate the factorial of n
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}
