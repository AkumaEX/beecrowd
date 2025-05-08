import 'dart:io';
import 'dart:math';

void main() {
  var [x1, y1] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  var [x2, y2] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  double distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  print('${distance.toStringAsFixed(4)}');
}
