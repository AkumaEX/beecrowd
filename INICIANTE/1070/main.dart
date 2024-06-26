import 'dart:io';

void main(List<String> args) {
  int x = int.parse(stdin.readLineSync()!);
  x = x + 1 - x % 2;
  for (int odd = x; odd < x + 11; odd += 2) print(odd);
}
