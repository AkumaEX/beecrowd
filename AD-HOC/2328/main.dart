import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int pieces = stdin.readLineSync()!.trim().split(' ').map(int.parse).reduce((a, b) => a + b) - n;
  print(pieces);
}
