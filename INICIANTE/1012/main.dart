import 'dart:io';

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print('TRIANGULO: ${(a * c / 2).toStringAsFixed(3)}');
  print('CIRCULO: ${(3.14159 * c * c).toStringAsFixed(3)}');
  print('TRAPEZIO: ${((a + b) * c / 2).toStringAsFixed(3)}');
  print('QUADRADO: ${(b * b).toStringAsFixed(3)}');
  print('RETANGULO: ${(a * b).toStringAsFixed(3)}');
}
