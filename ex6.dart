// Ask the user for a string
// And print out whether this string is a palindrome or not.

import 'dart:io';

void main() {
  stdout.write("Please enter a string: ");
  String input = stdin.readLineSync()!.toLowerCase();
  String revInput = input.split('').reversed.join('');

  input == revInput
      ? print("The string is a palindrome.")
      : print("The string is not a palindrome.");
}
