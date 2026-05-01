// Ask the user for a number
// and determine whether the number is prime or not.

import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Please enter a number: ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  checkPrime(chosenNumber);
}

void checkPrime(int number) {
  List<int> a = [
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i,
  ];

  a.length == 2
      ? print("$number is a prime number.")
      : print("$number is not a prime number.");
}
