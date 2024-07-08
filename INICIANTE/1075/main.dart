import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int num = 1; num < 10000; num++) {
    if (num % n == 2) print(num);
  }
}
