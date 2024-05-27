import 'dart:io';

void main() {
  var [na, da, va] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [nb, db, vb] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print((da / va) < (db / vb) ? na : nb);
}
