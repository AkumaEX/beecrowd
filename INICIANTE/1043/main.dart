import 'dart:io';

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  bool isTriangle = a < b + c && b < a + c && c < a + b;
  if (isTriangle)
    print('Perimetro = ${(a + b + c).toStringAsFixed(1)}');
  else
    print('Area = ${((a + b) * c / 2).toStringAsFixed(1)}');
}
