// Generate a random number between 1 and 100.
// Ask the user to guess the number,
// then tell them whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';

void main() {
  print("Type 'exit' to quit the game.");
  guessingGame();
}

guessingGame() {
  final random = Random();
  final randNumber = random.nextInt(100);
  int attempt = 0;

  while (true) {
    attempt += 1;
    stdout.write("Please chooose a number between 1 and 100: ");
    String chosenNumber = stdin.readLineSync()!;
  }
}
