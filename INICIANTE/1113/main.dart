import 'dart:io';

void main() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (x != y) {
    print(x > y ? 'Decrescente' : 'Crescente');
    [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
