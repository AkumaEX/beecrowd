import 'dart:io';

void main() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a != 0 || b != 0) {
    int c = 2 * a - b;
    print(c);
    [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
