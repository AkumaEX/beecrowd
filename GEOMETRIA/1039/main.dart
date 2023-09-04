import 'dart:io';
import 'dart:math';

double distance(x1, y1, x2, y2) {
  return sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2));
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [r1, x1, y1, r2, x2, y2] = line!.split(' ').map(int.parse).toList();
    if (distance(x1, y1, x2, y2) + r2 > r1) {
      print('MORTO');
    } else {
      print('RICO');
    }
  }
}
