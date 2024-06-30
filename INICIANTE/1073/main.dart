import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int value = 1; value <= n; value++) {
    if (value % 2 == 0) print('$value^2 = ${value * value}');
  }
}
