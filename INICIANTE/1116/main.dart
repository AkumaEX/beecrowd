import 'dart:io';

void formattedPrint(int x, int y) {
  print(y != 0 ? (x / y).toStringAsFixed(1) : 'divisao impossivel');
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    formattedPrint(x, y);
  }
}
