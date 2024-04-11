import 'dart:io';

int elapsed(int start, int finish) {
  if (finish > start) return finish - start;
  return finish - start + 24;
}

void main() {
  var [start, finish] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print('O JOGO DUROU ${elapsed(start, finish)} HORA(S)');
}
