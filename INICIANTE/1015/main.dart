import 'dart:io';
import 'dart:math';

double distance(double x1, double y1, double x2, double y2) {
  return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

void main() {
  var [x1, y1] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  var [x2, y2] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print('${distance(x1, y1, x2, y2).toStringAsFixed(4)}');
}
