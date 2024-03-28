enum Color {
  red,
  green,
  blue,
  yellow,
}

void main() {
  // Accessing enum values
  print(Color.red); // Output: Color.red

  // Converting enum to string
  String colorString = Color.green.toString();
  print(colorString); // Output: Color.green

  // Accessing enum values using index
  print(Color.values[2]); // Output: Color.blue

  // Iterating through enum values
  for (var color in Color.values) {
    print(color);
  }
}
