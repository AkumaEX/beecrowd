import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  int quantity = 0;
  while (n-- > 0) {
    int f = int.parse(stdin.readLineSync()!);
    if (a * f >= 40000000) quantity++;
  }
  print(quantity);
}
