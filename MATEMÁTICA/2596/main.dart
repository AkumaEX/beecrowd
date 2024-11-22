import 'dart:io';
import 'dart:math';

int minSpheres(int n) {
  return n - sqrt(n).toInt();
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    int n = int.parse(stdin.readLineSync()!);
    print(minSpheres(n));
  }
}
