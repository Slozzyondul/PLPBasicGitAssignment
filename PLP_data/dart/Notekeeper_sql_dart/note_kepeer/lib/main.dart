import 'package:flutter/material.dart';
import 'package:note_keeper/screens/note_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'notekeeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 224, 211, 29),
      ),
      home: NoteList(),
    );
  }
}
