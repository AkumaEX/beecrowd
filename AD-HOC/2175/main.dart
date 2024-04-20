import 'dart:io';

String fastest(double o, double b, double i) {
  if (o < b && o < i) return 'Otavio';
  if (b < o && b < i) return 'Bruno';
  if (i < o && i < b) return 'Ian';
  return 'Empate';
}

void main() {
  var [o, b, i] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print(fastest(o, b, i));
}
