import 'dart:io';
import 'dart:math';

int nLines(n) {
  return (-1 + sqrt(1 + 8 * n)) ~/ 2;
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- > 0) {
    int n = int.parse(stdin.readLineSync()!);
    print(nLines(n));
  }
}
