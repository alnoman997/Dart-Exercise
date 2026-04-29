// Make a two-player Rock-Paper-Scissors game against computer.

import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Rock-Paper-Scissors Game! \nType 'exit' to stop the game.");
  final random = Random();

  Map<String, String> rules = {
    'rock': 'scissors',
    'scissors': 'paper',
    'paper': 'rock',
  };

  int user = 0;
  int comp = 0;

  List<String> options = ['rock', 'paper', 'scissors'];

  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nEnter your choice (rock, paper, scissors): ");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "exit") {
      print("\nYou: $user, Computer: $comp");
      print("Thanks for playing!");
      break;
    }
  }
}
