import 'dart:io';
import 'dart:math';

double h(double a, double d, double r) {
  double x = (90 - r) * pi / 180;
  return a - tan(x) * d;
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [a, d, r] = line!.split(' ').map(double.parse).toList();
    print(h(a, d, r).toStringAsFixed(4));
  }
}
