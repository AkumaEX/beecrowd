import 'dart:io';

void main() {
  var [l, r] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (l != 0 || r != 0) {
    print(l + r);
    [l, r] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
