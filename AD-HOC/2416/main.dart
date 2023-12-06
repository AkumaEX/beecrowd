import 'dart:io';

void main() {
  var [c, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(c % n);
}
