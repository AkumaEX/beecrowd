import 'dart:io';

void main() {
  var [a, b, c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  bool accepted = b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 == 0;
  print(accepted ? 'Valores aceitos' : 'Valores nao aceitos');
}
