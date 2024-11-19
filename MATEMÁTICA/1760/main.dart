import 'dart:io';
import 'dart:math';

double area(int l) {
  return pow(l, 2) * 2 * sqrt(3) / 5;
}

void main() {
  int l;
  while ((l = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    print(area(l).toStringAsFixed(2));
  }
}
