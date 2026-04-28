// Take two lists and write a program that returns a list
// That contains only the elements that are common between them (without duplicates).
// Make sure your program works on two lists of different sizes.

import 'dart:io';

void main() {
  print("Please enter the first list (separated by spaces): ");
  List<String> input1 = stdin.readLineSync()!.split(" ");
  List<int> list1 = input1.map(int.parse).toList();

  print("Please enter the second list (separated by spaces): ");
  List<String> input2 = stdin.readLineSync()!.split(" ");
  List<int> list2 = input2.map(int.parse).toList();

  List<int> commonElements = list1.toSet().intersection(list2.toSet()).toList();
  print("Common elements: $commonElements");
}
