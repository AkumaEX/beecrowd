import 'dart:io';

int sumBetween(int a, int b) {
  return (a + b) * (b - a + 1) ~/ 2;
}

void main() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(sumBetween(a, b));
}
