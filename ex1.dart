// Create a program that asks the user to enter their name and their age.
// Print out a message that tells how many years they have to be 100 years old.

import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  print("Hello, $name! How old are you?");

  int age = int.parse(stdin.readLineSync()!);

  int yearsTo100 = 100 - age;

  print("Mr.$name, you have $yearsTo100 years to be 100 years old.");
}
