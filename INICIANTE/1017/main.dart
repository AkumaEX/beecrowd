import 'dart:io';

void main() {
  double t = double.parse(stdin.readLineSync()!);
  double v = double.parse(stdin.readLineSync()!);
  print((t * v / 12).toStringAsFixed(3));
}
