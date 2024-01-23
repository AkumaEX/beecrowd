import 'dart:io';

int biggerSize(int b, int t) {
  int size = b + t;
  if (size > 160) return 1;
  if (size < 160) return 2;
  return 0;
}

void main() {
  int b = int.parse(stdin.readLineSync()!);
  int t = int.parse(stdin.readLineSync()!);
  print(biggerSize(b, t));
}
