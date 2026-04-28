// Create a program that asks the user for a number
// And then prints out a list of all the divisors of that number.

import 'dart:io';

void main() {
  stdout.write("Please enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
