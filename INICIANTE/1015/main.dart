import 'dart:io';
import 'dart:math';

void main() {
  List<double> p1 = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  List<double> p2 = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  double distance = sqrt(pow(p2[0] - p1[0], 2) + pow((p2[1] - p1[1]), 2));
  print('${distance.toStringAsFixed(4)}');
}
