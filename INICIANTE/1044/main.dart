import 'dart:io';

bool isMultiple(int a, int b) {
  return a % b == 0 || b % a == 0;
}

void main() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(isMultiple(a, b) ? 'Sao Multiplos' : 'Nao sao Multiplos');
}
