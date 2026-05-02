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
  }
}
