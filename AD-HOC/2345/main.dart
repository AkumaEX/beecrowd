import 'dart:io';

int difference(int a, int b, int c, int d) {
  return (a - b - c + d).abs();
}

void main() {
  var [a, b, c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(difference(a, b, c, d));
}
