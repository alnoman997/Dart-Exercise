// Take a list from user.
// Write a Dart code that takes this list and makes a new list
// that has only the even elements of this list in it.

import 'dart:io';

void main() {
  print("Enter the list of numbers (separated by space): ");

  String input = stdin.readLineSync()!;

  List<String> parts = input.split(" ");

  List<int> numbers = parts.map((e) => int.parse(e)).toList();

  List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();

  print("Even numbers in the list: $evenNumbers");
}
