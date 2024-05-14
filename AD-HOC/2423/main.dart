import 'dart:io';
import 'dart:math';

int maxCakes(int a, int b, int c) {
  return min(min(a ~/ 2, b ~/ 3), c ~/ 5);
}

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(maxCakes(a, b, c));
}
