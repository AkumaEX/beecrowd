import 'dart:io';

void main() {
  int positive = 0;
  for (int i = 0; i < 6; i++) {
    if (double.parse(stdin.readLineSync()!) > 0) positive++;
  }
  print('$positive valores positivos');
}
