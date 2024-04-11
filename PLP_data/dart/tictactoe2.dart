// tictac toe
// players-variable
// gameboard-variable
// play(function) - handles turns and input validation
// displayboard(function) - already assigned
// checkwinner(function)
// displaywinner(function)
import 'dart:io';

void main() {
  String player = "X";
  var gamedashboard = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];
  // display function for the UI
  displaydashboard(gamedashboard);
  // Play function to switch turns and handle input
  play(gamedashboard, player);
}

void displaydashboard(List gamedashboard) {
  print(
      "${gamedashboard[0][0]}  |  ${gamedashboard[0][1]}  |  ${gamedashboard[0][2]}");
  print("------------");
  print(
      "${gamedashboard[1][0]}  |  ${gamedashboard[1][1]}  |  ${gamedashboard[1][2]}");
  print("------------");
  print(
      "${gamedashboard[2][0]}  |  ${gamedashboard[2][1]}  |  ${gamedashboard[2][2]}");
}

void play(List gamedashboard, String player) {
  print("Player $player select the box (1-9) : ");
  String? userInput = stdin.readLineSync();

  // Check if input is not null and can be parsed as an integer
  if (userInput != null && int.tryParse(userInput) != null) {
    var box = int.parse(userInput);
    // Check if input is within valid range (1-9)
    if (box >= 1 && box <= 9) {
      var row = (box - 1) ~/ 3;
      var col = (box - 1) % 3;
      if (gamedashboard[row][col] == "") {
        gamedashboard[row][col] = player;
        checkwinner(gamedashboard, player);
      } else {
        print("This box is already occupied. Please select another box");
        play(gamedashboard, player);
      }
    } else {
      print("Invalid box number. Please enter a number between 1 and 9.");
      play(gamedashboard, player);
    }
  } else {
    print("Invalid input. Please enter a number.");
    play(gamedashboard, player);
  }
}

void checkwinner(List gamedashboard, String player) {
  displaydashboard(gamedashboard);
  // ... rest of the checkwinner logic remains the same ...
}

void displaywinner(String player) {
  print("Player $player is the winner");
}
