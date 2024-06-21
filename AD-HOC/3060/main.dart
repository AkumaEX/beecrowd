import 'dart:io';

void printValues(int v, int p) {
  int value = v ~/ p;
  int adjustment = v % p;
  for (int i = 0; i < p; i++) {
    print(i < adjustment ? value + 1 : value);
  }
}

void main(List<String> args) {
  int v = int.parse(stdin.readLineSync()!);
  int p = int.parse(stdin.readLineSync()!);
  printValues(v, p);
}
