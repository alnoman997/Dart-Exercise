// Two Player Tic Tac Toe Game.

import 'dart:io';

void main() {
  List<List<String>> board = List.generate(
    3,
    (_) => List.generate(3, (_) => ' '),
  );

  int user = 1;

  print("""
🎮 Tic Tac Toe Game Started!
User 1 = X, User 2 = O
Enter move like: row col (e.g. 0 1)
Type 'exit' to quit
""");

  while (true) {
    printBoard(board);

    stdout.write("User $user turn: ");
    String input = stdin.readLineSync()!.trim();

    if (input.toLowerCase() == "exit") {
      print("Game exited!");
      break;
    }

    List parts = input.split(" ");
    if (parts.length != 2) {
      print("Invalid input!");
      continue;
    }

    int? r = int.tryParse(parts[0]);
    int? c = int.tryParse(parts[1]);

    if (r == null || c == null) {
      print("Enter valid numbers!");
      continue;
    }

    if (r < 0 || r > 2 || c < 0 || c > 2) {
      print("Out of range!");
      continue;
    }

    if (board[r][c] != ' ') {
      print("Cell already taken!");
      continue;
    }

    board[r][c] = (user == 1) ? 'X' : 'O';

    if (checkWin(board)) {
      printBoard(board);
      print("User $user wins! 🎉");
      break;
    }

    if (isDraw(board)) {
      printBoard(board);
      print("Draw game! 🤝");
      break;
    }

    user = (user == 1) ? 2 : 1;
  }
}

void printBoard(List<List<String>> b) {
  print("\n --- --- ---");
  for (var r in b) {
    print("| ${r[0]} | ${r[1]} | ${r[2]} |");
    print(" --- --- ---");
  }
}

bool checkWin(List<List<String>> b) {
  for (int i = 0; i < 3; i++) {
    if (b[i][0] != ' ' && b[i][0] == b[i][1] && b[i][1] == b[i][2]) return true;
    if (b[0][i] != ' ' && b[0][i] == b[1][i] && b[1][i] == b[2][i]) return true;
  }

  if (b[0][0] != ' ' && b[0][0] == b[1][1] && b[1][1] == b[2][2]) return true;
  if (b[0][2] != ' ' && b[0][2] == b[1][1] && b[1][1] == b[2][0]) return true;

  return false;
}

bool isDraw(List<List<String>> b) {
  for (var r in b) {
    for (var c in r) {
      if (c == ' ') return false;
    }
  }
  return true;
}
