import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screen.dart';
import 'package:todolist/screens/login_screen.dart'; // Import your login screen
import 'package:sqlite3/sqlite3.dart';

//importing firebase dependencies
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      title: 'Solo Tasks', // Set app title
      theme: ThemeData(
        // Configure app theme
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 98, 165, 224)), // Set primary color
        useMaterial3: true, // Enable Material 3 design elements
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => TasksScreen(), // Main tasks screen
        '/login': (context) => LoginScreen(), // Login screen
      },
    );
  }
}
