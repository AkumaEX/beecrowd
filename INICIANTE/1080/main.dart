import 'dart:io';

void main() {
  var [max, position] = [0, 0];
  for (int i = 1; i < 101; i++) {
    int value = int.parse(stdin.readLineSync()!);
    if (value > max) [max, position] = [value, i];
  }
  print(max);
  print(position);
}
