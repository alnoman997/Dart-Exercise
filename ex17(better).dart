import 'dart:io';

void main() {
  stdout.write("What square size do you want? : ");
  int userChoice = int.parse(stdin.readLineSync() ?? '0');

  print("Here is your ${userChoice} by ${userChoice} game board:\n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  String rowLine = " ---";
  String colLine = "|   ";

  for (int i = 0; i < squareSize; i++) {
    // print top line
    for (int j = 0; j < squareSize; j++) {
      stdout.write(rowLine);
    }
    print("");

    // print middle line
    for (int j = 0; j < squareSize; j++) {
      stdout.write(colLine);
    }
    print("|"); // last border
  }

  // bottom line
  for (int j = 0; j < squareSize; j++) {
    stdout.write(rowLine);
  }
  print("");
}
