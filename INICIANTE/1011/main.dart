import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  double r = double.parse(stdin.readLineSync()!);
  double volume = (4 / 3) * 3.14159 * pow(r, 3);
  print('VOLUME = ${volume.toStringAsFixed(3)}');
}
