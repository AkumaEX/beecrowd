import 'dart:io';
import 'dart:math';

int getEdgeSize(int a, int b, int c) {
  num edgeSize = pow(a * b * c, 1 / 3);
  return edgeSize.toInt();
}

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a > 0 && b > 0 && c > 0) {
    print(getEdgeSize(a, b, c));
    [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
