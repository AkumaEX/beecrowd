import 'dart:io';

int quantity(n) {
  return (n - 3) + (n - 2) * (n - 3) ~/ 2;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(quantity(n));
}
