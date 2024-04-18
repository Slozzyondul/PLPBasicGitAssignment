import 'package:flutter/material.dart';

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TicTacToeScreen(),
    );
  }
}

class TicTacToeScreen extends StatefulWidget {
  @override
  _TicTacToeScreenState createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  String player = "X";
  List<List<String>> gameDashboard = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display game board
            Column(
              children: List.generate(3, (row) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (col) {
                    return GestureDetector(
                      onTap: () => _onBoxTapped(row, col),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          gameDashboard[row][col],
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    );
                  }),
                );
              }),
            ),
            SizedBox(height: 20),
            Text('Player $player\'s turn'),
          ],
        ),
      ),
    );
  }

  void _onBoxTapped(int row, int col) {
    if (gameDashboard[row][col] == "") {
      setState(() {
        gameDashboard[row][col] = player;
        if (_checkWinner(row, col)) {
          _displayWinner(player);
          _resetGame();
        } else {
          player = player == "X" ? "O" : "X";
        }
      });
    }
  }

  bool _checkWinner(int row, int col) {
    String symbol = gameDashboard[row][col];
    // Check row
    if (gameDashboard[row].every((element) => element == symbol)) return true;
    // Check column
    if (gameDashboard.every((element) => element[col] == symbol)) return true;
    // Check diagonals
    if ((gameDashboard[0][0] == symbol &&
            gameDashboard[1][1] == symbol &&
            gameDashboard[2][2] == symbol) ||
        (gameDashboard[0][2] == symbol &&
            gameDashboard[1][1] == symbol &&
            gameDashboard[2][0] == symbol)) return true;
    return false;
  }

  void _displayWinner(String player) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Winner'),
          content: Text('Player $player wins!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _resetGame() {
    setState(() {
      player = "X";
      gameDashboard = [
        ["", "", ""],
        ["", "", ""],
        ["", "", ""],
      ];
    });
  }
}
