import 'dart:io';
import 'dart:math';

int ballons(int radius, int liters) {
  const pi = 3.1415;
  double volume = (4 / 3) * pi * pow(radius, 3);
  return liters ~/ volume;
}

void main() {
  var [r, l] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(ballons(r, l));
}
