import 'dart:io';

int maior(int a, int b) {
  return (a + b + (a - b).abs()) ~/ 2;
}

void main() {
  var [a, b, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print('${maior(maior(a, b), c)} eh o maior');
}
