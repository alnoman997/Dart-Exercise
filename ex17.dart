//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---

//  This one is 3x3 (like in tic tac toe).

// Ask the user what size game board they want to draw,
// and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

void main() {
  stdout.write("What square size do you want? ");
  int userChoice = int.parse(stdin.readLineSync() ?? '0');
  print("Here is your ${userChoice} by ${userChoice} game board:\n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  String rowlines = " ---";
  String colLines = "/   ";

  for (var i = 0; i < squareSize; i++) {
    print(rowlines * squareSize);
    print(colLines * squareSize);
  }

  print("${rowlines * squareSize}\n");
}
