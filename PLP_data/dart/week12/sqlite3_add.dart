import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  //open a connection to the SQLite database
  var databasePath = "/home/solo/Desktop/PLP_data/dart/week12/solo.db";
  var database = await openDatabase(databasePath);

  //query the SQLite database
  List<Map<String, dynamic>> results =
      await database.rawQuery('SELECT * FROM students');

  //print the results
  for (var row in results) {
    print(row);
  }

  //close the connection to the SQLite database
  await database.close();
}
