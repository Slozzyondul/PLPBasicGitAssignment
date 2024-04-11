import 'dart:io';

void main() {
  List<String> board = List.filled(9,
      ''); //creating a list to represent the tic-tac board, initialized with empty spaces
  bool isPlayer1Turn = true; //variable to track player's turn
  int moves = 0; // variable that keeps track of the number of moves made

  print("Welcome to solo's tic-tac-toe game!\n");
  printBoard(board); //call a function to print the current state of the board

  while (true) {
    print(
        '\n${isPlayer1Turn ? "Player 1" : "Player 2"}, input your move (1-9):'); //prompt the current player to enter their desired move
    String? input = stdin.readLineSync(); //reading the user's input
    if (input == null) {
      print('invalid input! please try again with a valid input.');
      continue;
    }
    try {
      int move = int.parse(input); //converting the input to an integer

      if (move < 1 || move > 9 || board[move - 1] != '') {
        //check if the move is invalid
        print('invalid move. please try again.');
        continue;
      }

      // update the board with the player's move
      board[move - 1] = isPlayer1Turn ? 'X' : 'O';
      moves++;

      // print the updated board
      printBoard(board);

      // check for a winner or a draw
      if (checkWinner(board)) {
        print(isPlayer1Turn ? 'player 1 wins!' : 'player 2 wins!');
        break;
      } else if (moves == 9) {
        print('it\'s a draw!');
        break;
      }

      // switch to the next player's turn
      isPlayer1Turn = !isPlayer1Turn;
    } catch (e) {
      print('invalid input! please try again with a valid input.');
    }
  }
}

//function to print the current state of the board
void printBoard(List<String> board) {
  for (int i = 0; i < 9; i += 3) {
    print(board.sublist(i, i + 3).join(' | '));
    if (i < 6) print('solosolo');
  }
}

//function to check if there is a winner
bool checkWinner(List<String> board) {
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != '' &&
        board[i] == board[i + 1] &&
        board[i] == board[i + 2]) {
      return true;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != '' &&
        board[i] == board[i + 3] &&
        board[i] == board[i + 6]) {
      return true;
    }
  }

  // Check diagonals
  if (board[0] != '' && board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] != '' && board[2] == board[4] && board[2] == board[6]) {
    return true;
  }

  return false;
}
