import 'dart:io';

bool isTriangle(double a, double b, double c) {
  return a != b + c && b != a + c && c != a + b;
}

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  if (isTriangle(a, b, c))
    print('Perimetro = ${(a + b + c).toStringAsFixed(1)}');
  else
    print('Area = ${((a + b) * c / 2).toStringAsFixed(1)}');
}
