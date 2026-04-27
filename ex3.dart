// Take a list of numbers.
// And print all the numbers which are less than 5.

import 'dart:io';

void main() {
  print("Please enter a list of numbers (separated by spaces): ");

  String input = stdin.readLineSync()!;

  List<int> numbers = input.split(" ").map((e) => int.parse(e)).toList();

  print("Numbers less than 5: ");
  for (int number in numbers) {
    if (number < 5) {
      print(number);
    }
  }
}
