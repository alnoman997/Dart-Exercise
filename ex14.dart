// Write a program (using functions!) that asks the user
// for a long string containing multiple words.
// Print back to the user the same string, except with the words in backwards order.

import 'dart:io';

void main() {
  stdout.write("Please enter a sentence: ");
  String sentence = stdin.readLineSync();

  reverseSentence(sentence);
}
