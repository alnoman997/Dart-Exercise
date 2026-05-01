// Write a program that asks the user
// how many Fibonnaci numbers to generate and then generates them.

import 'dart:io';

void main() {
  stdout.write("How many Fibonacci numbers do you want? ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  List<int> result = fibonacciNumbers(chosenNumber);
  print(result);
}
