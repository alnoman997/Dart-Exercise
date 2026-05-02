// Two Player Tic Tac Toe Game

import 'dart:io';

void main() {
  List<List<String>> theBoard = List.generate(
    3,
    (_) => List.generate(3, (_) => ' '),
  );

  startGame(theBoard);

  int a = 1, user = 2, tmp;

  while (true) {
    tmp = a;
    a = user;
    user = tmp;
    currentBoard(theBoard);

    stdout.write("Please user $user, choose a coordinate : ");
    List userChoice = stdin.readLineSync()!.split(" ");

    if (userChoice.join(" ") == "exit") {
      print("\nGame quitted int the following state :");
      break;
    }

theBoard = makeMove(theBoard, user, userChoice);

if (rowCheck(theBoard)) {
  print("\nUser $user: Row win!");
  break;
} else if (rowCheck(transpose(theBoard))) {
  print("\nUser $user: Column win!");
  break;
} else if (rowCheck(diagonal(theBoard))) {
  print("\nUser $user: Diagonal win!");
  break;
} else if (drawGame(theBoard) == 1) {
  print("\nGame ended in a draw!");
  break;
}
  }