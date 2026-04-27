// Ask the user for a number.
// And print out whether the number is even or odd.

import 'dart:io';

void main() {
  stdout.write("Please enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number is an even number.");
  } else {
    print("$number is an odd number.");
  }
}
