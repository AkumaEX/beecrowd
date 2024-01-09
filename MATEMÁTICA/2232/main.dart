import 'dart:io';
import 'dart:math';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < t; times++) {
    int n = int.parse(stdin.readLineSync()!);
    int s = pow(2, n).toInt() - 1;
    print(s);
  }
}
