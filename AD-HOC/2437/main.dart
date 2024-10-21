import 'dart:io';

void main() {
  var [xM, yM, xR, yR] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print((xM - xR).abs() + (yM - yR).abs());
}
