import 'dart:io';

String quadrant(double x, double y) {
  if (x == 0 && y == 0) return 'Origem';
  if (x == 0) return 'Eixo Y';
  if (y == 0) return 'Eixo X';
  if (x > 0) return y > 0 ? 'Q1' : 'Q4';
  return y > 0 ? 'Q2' : 'Q3';
}

void main() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print(quadrant(x, y));
}
