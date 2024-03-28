import 'dart:async';

void main() async {
  // Start the asynchronous operation
  print("Start of main()");
  String result = await fetchUserData();
  // This line will be executed only after fetchUserData() completes
  print("End of main() - User data: $result");
}

Future<String> fetchUserData() {
  // Simulate fetching user data asynchronously
  return Future.delayed(Duration(seconds: 2), () {
    return 'John Doe';
  });
}
