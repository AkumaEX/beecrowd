import 'dart:io';

bool isValid(int a, int b, int c, int d) {
  if (b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 == 0) return true;
  return false;
}

void main() {
  var [a, b, c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(isValid(a, b, c, d) ? 'Valores aceitos' : 'Valores nao aceitos');
}
