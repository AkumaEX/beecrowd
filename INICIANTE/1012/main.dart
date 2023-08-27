import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> data = stdin.readLineSync()!.split(" ");
  double A = double.parse(data[0]);
  double B = double.parse(data[1]);
  double C = double.parse(data[2]);

  double triangle = A * C / 2;
  double circle = 3.14159 * pow(C, 2);
  double trapeze = (A + B) * C / 2;
  double square = 1.0 * pow(B, 2);
  double rectangle = A * B;

  print('TRIANGULO: ${triangle.toStringAsFixed(3)}');
  print('CIRCULO: ${circle.toStringAsFixed(3)}');
  print('TRAPEZIO: ${trapeze.toStringAsFixed(3)}');
  print('QUADRADO: ${square.toStringAsFixed(3)}');
  print('RETANGULO: ${rectangle.toStringAsFixed(3)}');
}
