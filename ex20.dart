// Two Player Tic Tac Toe Game

import 'dart:io';

void main() {
  List<List<String>> theBoard = List.generate(
    3,
    (_) => List.generate(3, (_) => ' '),
  );

  startGame(theBoard);
}
