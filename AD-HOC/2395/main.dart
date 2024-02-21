import 'dart:io';

int maxContainers(int a, int b, int c, int x, int y, int z) {
  return (x ~/ a) * (y ~/ b) * (z ~/ c);
}

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [x, y, z] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(maxContainers(a, b, c, x, y, z));
}
