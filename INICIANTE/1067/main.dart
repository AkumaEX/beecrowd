import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  for (int number = 1; number <= x; number += 2) {
    print(number);
  }
}
