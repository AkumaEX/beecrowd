import 'dart:io';
import 'dart:math';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [a, b, c] = line!.split(' ').map(double.parse).toList();
    a *= 3.141592654 / 180;
    print(((tan(a) * b + c) * 5).toStringAsFixed(2));
  }
}
