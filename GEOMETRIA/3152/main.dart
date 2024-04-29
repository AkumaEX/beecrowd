import 'dart:io';

double getArea() {
  var [x1, y1] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [x2, y2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [x3, y3] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [x4, y4] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  return ((x1 * y2 - y1 * x2) + (x2 * y3 - y2 * x3) + (x3 * y4 - y3 * x4) + (x4 * y1 - y4 * x1)).abs() / 2;
}

void main() {
  double areaA = getArea();
  double areaB = getArea();
  print('terreno ${areaA > areaB ? 'A' : 'B'}');
}
