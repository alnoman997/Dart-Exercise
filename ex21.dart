// You, the user, will have in your head a number between 0 and 100.
// The program will guess a number, and you, the user, will say
// whether it is too high, too low, or your number.

import 'dart:io';
import 'dart:math';

void main() {
  print("""\n
  Hello! I am your laptop.
  Please think of a number between 0 and 100, and I will try to guess it.
  
  If my guess is too low, type "low". If I am too high, type "high". If I am correct, type "correct".
  """);

  compGuess();
}

void compGuess() {
  final random = Random();
  List<int> numbList = List.generate(101, (i) => i);
  int guess = numList[random.nextInt(numList.length)];
  int count = 0;
}
