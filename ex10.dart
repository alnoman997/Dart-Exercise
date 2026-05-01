// Ask the user for a number
// and determine whether the number is prime or not.

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Please enter a number: ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  checkPrime(chosenNumber);
}
