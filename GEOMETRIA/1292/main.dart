import 'dart:io';
import 'dart:math';

double largestSide(double f) {
  return f * sin(108 * pi / 180) / sin(63 * pi / 180);
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    double f = double.parse(line!);
    print(largestSide(f).toStringAsFixed(10));
  }
}
