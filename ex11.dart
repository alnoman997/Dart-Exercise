// Write a program that takes a list of numbers
// and makes a new list of only the first and last elements of the given list.
import 'dart:io';

void main() {
  final random = Random();
  List<int> randList = List.generate(10, (_) => random.nextInt(100));

  print(randList);

  print(newList(randList));
}
