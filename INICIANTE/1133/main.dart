import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  if (x > y) [x, y] = [y, x];
  for (int n = x + 1; n < y; n++) {
    if (n % 5 == 2 || n % 5 == 3) print(n);
  }
}
