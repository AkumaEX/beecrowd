import 'dart:io';

void main() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print((y / (y - x)).ceil());
}
