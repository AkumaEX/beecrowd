import 'dart:io';

void main() {
  double raio = double.parse(stdin.readLineSync()!);
  double area = raio * raio * 3.14159;
  print('A=${area.toStringAsFixed(4)}');
}
