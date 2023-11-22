import 'dart:io';

void main() {
  double t = double.parse(stdin.readLineSync()!);
  double v = double.parse(stdin.readLineSync()!);
  double consumption = t * v / 12;
  print(consumption.toStringAsFixed(3));
}
