import 'dart:io';

void main() {
  int even = 0, times = 5;
  while (times-- > 0) {
    if (int.parse(stdin.readLineSync()!) % 2 == 0) even++;
  }
  print('$even valores pares');
}
