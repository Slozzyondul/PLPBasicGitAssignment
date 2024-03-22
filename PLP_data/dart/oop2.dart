/*
//class with defaut constructzor in dart
class Person {
  String first_name;
  DateTime DOB;
  // defult constructor provided by dart
  //no  constructor defined
}

void main() {
  //creating a person's instanace
  var person = Person();

  // acees instance variables
  print(person.first_name);
  print(person.DOB);
}
*/

/*
//Parameterized Constructors (chess ladder sample)
//classes

class Position {
  int id;
  int rank;
  //parameterized constructors
  Position(this.id, this.rank);
}

class Players {
  int id;
  String name;
  int rank;
  //parameterized constructors
  Players(this.id, this.name, this.rank);
  //methods to display  information
  void displayInfo() {
    print("id: $id");
    print("name: $name");
    print("rank: $rank");
  }
}

void main() {
  //creating an insatnce of a player class using the parameterized constructor
  var player1 = Players(33139677, "solo", 1);

  //calling the dispalayinfo method to prin t the information about the player
  player1.displayInfo();
}

class Ladder {
  int rank;
  int id;
  String name;
  //parameterized constructors
  Ladder(this.rank, this.id, this.name);
}

class Matches {
  int id;
  int last_opponent_id;
  DateTime last_match;
  int rank;
  //parameterized constructors
  Matches(this.id, this.last_opponent_id, this.last_match, this.rank);
}

class Color {
  int id;
  bool choose_color;
  //parameterized constructors
  Color(this.id, this.choose_color);
}
*/

/*modified chess ladder
// Define a Position class to represent a player's position in the ladder
class Position {
  int id;
  int rank;

  // Parameterized constructor for Position
  Position(this.id, this.rank);
}

// Define a Player class to represent a chess player
class Player {
  int id;
  String name;

  // Constructor for Player
  Player(this.id, this.name);
}

// Define a Ladder class to represent the chess ladder itself
class Ladder {
  late List<Player> players; // List of players in the ladder

  // Constructor for Ladder
  Ladder() {
    players = []; // Initialize an empty list of players
  }

  // Method to add a player to the ladder
  void addPlayer(Player player) {
    players.add(player);
  }

  // Method to remove a player from the ladder
  void removePlayer(Player player) {
    players.remove(player);
  }

  // Method to display the ladder (list of players with their ranks)
  void displayLadder() {
    print("Chess Ladder:");
    for (int i = 0; i < players.length; i++) {
      print("${i + 1}. ${players[i].name} (Rank: ${i + 1})");
    }
  }
}

void main() {
  // Create some players
  var player1 = Player(1, "solo");
  var player2 = Player(2, "slozzy");
  var player3 = Player(3, "Char");

  // Create a ladder
  var ladder = Ladder();

  // Add players to the ladder
  ladder.addPlayer(player1);
  ladder.addPlayer(player2);
  ladder.addPlayer(player3);

  // Display the ladder
  ladder.displayLadder();

  // Remove a player from the ladder
  ladder.removePlayer(player2);

  // Display the updated ladder
  ladder.displayLadder();
}
*/

/*
//factory methods
//provide an alternative ways to create instances of a lass
//use the return key word
// this is not used  in the factory constructor
import 'dart:math';

class Circle {
  double radius;

  Circle(this.radius);

  // Factory method to create circles with different radii
  factory Circle.create(double radius) {
    if (radius <= 0) {
      throw ArgumentError('Radius must be positive.');
    }
    return Circle(radius);
  }

  // Method to calculate the area of the circle
  double calculateArea() {
    return pi * radius * radius;
  }
}

void main() {
  // Creating circles using the factory method
  var circle1 = Circle.create(5);
  var circle2 = Circle.create(7.5);

  // Calculating and printing the area of each circle
  print('Area of Circle 1: ${circle1.calculateArea()}');
  print('Area of Circle 2: ${circle2.calculateArea()}');
}

*/

/*
//singletons
//ensures that a class has only one instance and also provides a global point of access to it
//For example, you only want one instance of a class that represents your local storage, 
//or you may end up with two different sources of data, which are out of sync.
class FileSystemManager {
  // Static final variable to hold the single instance of the class
  static final FileSystemManager _instance = FileSystemManager._internal();

  // Private constructor for initialization logic
  FileSystemManager._internal() {
    // Initialization logic here
    print("Singleton instance created.");
  }

  // Factory constructor ensures only one instance is returned
  factory FileSystemManager() {
    return _instance;
  }
  
  void openFile() {
    print("File opened.");
  }
  
  void writeFile() {
    print("File written.");
  }
}

void main() {
  // Creating instances of FileSystemManager
  FileSystemManager manager1 = FileSystemManager();
  FileSystemManager manager2 = FileSystemManager();

  // Both instances will reference the same singleton instance
  print(manager1.hashCode == manager2.hashCode); // Output: true

  // Using methods of FileSystemManager
  manager1.openFile(); // Output: File opened.
  manager2.writeFile(); // Output: File written.
}
*/

/*
//mixins
//reusing a class’s code in different class hierarchies

class Animal {
  void breathe() => print("animal breaths");
}

class Crocodile extends Animal with Swim {}

class Shark extends Animal with Swim {}

class Owl extends Animal with Fly {}

class Dove extends Animal with Fly {}

class Dog extends Animal with Swim {}

mixin Swim {
  void swimming() => print("this animal swims");
}

mixin Fly {
  void flying() => print("this animal flys");
}

void main() {
  var crocodile = Crocodile();
  crocodile.breathe();
  crocodile.swimming();

  var shark = Shark();
  shark.breathe();
  shark.swimming();

  var owl = Owl();
  owl.breathe();
  owl.flying();

  var dove = Dove();
  dove.breathe();
  dove.flying();

  var dog = Dog();
  dog.breathe();
  dog.swimming();
}
*/

/*
//application of mixins in chess ladder
// Define a mixin for operations related to players
mixin PlayerOperations {
  void addPlayer(Player player);
  void removePlayer(Player player);
}

// Define a mixin for operations related to matches
mixin MatchOperations {
  void addMatch(Match match);
  void removeMatch(Match match);
}

// Define a Player class
class Player {
  int id;
  String name;

  Player(this.id, this.name);
}

// Define a Match class
class Match {
  int id;
  DateTime date;

  Match(this.id, this.date);
}

// Define a Ladder class to represent the chess ladder itself
class Ladder with PlayerOperations, MatchOperations {
  late List<Player> players; // List of players in the ladder
  late List<Match> matches; // List of matches in the ladder

  // Constructor for Ladder
  Ladder() {
    players = []; // Initialize an empty list of players
    matches = []; // Initialize an empty list of matches
  }

  // Implement methods from PlayerOperations mixin
  @override
  void addPlayer(Player player) {
    players.add(player);
  }

  @override
  void removePlayer(Player player) {
    players.remove(player);
  }

  // Implement methods from MatchOperations mixin
  @override
  void addMatch(Match match) {
    matches.add(match);
  }

  @override
  void removeMatch(Match match) {
    matches.remove(match);
  }
}

void main() {
  // Create a ladder
  var ladder = Ladder();

  // Create some players
  var player1 = Player(1, "Alice");
  var player2 = Player(2, "Bob");

  // Add players to the ladder
  ladder.addPlayer(player1);
  ladder.addPlayer(player2);

  // Remove a player from the ladder
  ladder.removePlayer(player2);
}
*/

/*
// Define a mixin for operations related to players
mixin PlayerOperations {
  void addPlayer(Player player);
  void removePlayer(Player player);
}

// Define a mixin for operations related to matches
mixin MatchOperations {
  void addMatch(Match match);
  void removeMatch(Match match);
}

// Define a Player class
class Player {
  int id;
  String name;

  Player(this.id, this.name);
}

// Define a Match class
class Match {
  int id;
  DateTime date;

  Match(this.id, this.date);
}

// Define a Display class to display information about the ladder, players, and matches
class Display {
  void displayLadder(Ladder ladder) {
    print("Players in the ladder:");
    for (var player in ladder.players) {
      print("ID: ${player.id}, Name: ${player.name}");
    }

    print("Matches in the ladder:");
    for (var match in ladder.matches) {
      print("ID: ${match.id}, Date: ${match.date}");
    }
  }
}

// Define a Ladder class to represent the chess ladder itself
class Ladder with PlayerOperations, MatchOperations {
  late List<Player> players; // List of players in the ladder
  late List<Match> matches; // List of matches in the ladder

  // Constructor for Ladder
  Ladder() {
    players = []; // Initialize an empty list of players
    matches = []; // Initialize an empty list of matches
  }

  // Implement methods from PlayerOperations mixin
  @override
  void addPlayer(Player player) {
    players.add(player);
  }

  @override
  void removePlayer(Player player) {
    players.remove(player);
  }

  // Implement methods from MatchOperations mixin
  @override
  void addMatch(Match match) {
    matches.add(match);
  }

  @override
  void removeMatch(Match match) {
    matches.remove(match);
  }
}

void main() {
  // Create a ladder
  var ladder = Ladder();

  // Create some players
  var player1 = Player(1, "solo");
  var player2 = Player(2, "ondul");

  // Add players to the ladder
  ladder.addPlayer(player1);
  ladder.addPlayer(player2);

  // Create some matches
  var match1 = Match(1, DateTime.now());
  var match2 = Match(2, DateTime.now());

  // Add matches to the ladder
  ladder.addMatch(match1);
  ladder.addMatch(match2);

  // Display information about the ladder
  var display = Display();
  display.displayLadder(ladder);
}
*/

