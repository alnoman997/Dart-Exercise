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
}
