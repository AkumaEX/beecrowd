import 'dart:io';
import 'dart:math';

int numPlates(int c, int d) {
  return c > 0 || d > 0 ? (pow(26, c) * pow(10, d)).toInt() : 0;
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- > 0) {
    var [c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(numPlates(c, d));
  }
}
