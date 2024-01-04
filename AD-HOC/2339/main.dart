import 'dart:io';

bool isEnough(int c, int p, int f) {
  return c * f <= p;
}

void main() {
  var [c, p, f] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(isEnough(c, p, f) ? 'S' : 'N');
}
