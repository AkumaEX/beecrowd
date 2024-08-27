import 'dart:io';

void formattedPrint(int x, int y) {
  if (x > 0) {
    print(y > 0 ? 'primeiro' : 'quarto');
  } else {
    print(y > 0 ? 'segundo' : 'terceiro');
  }
}

void main() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (x != 0 && y != 0) {
    formattedPrint(x, y);
    [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
