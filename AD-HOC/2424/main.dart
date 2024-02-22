import 'dart:io';

bool ballIn(int x, int y) {
  return x >= 0 && x <= 432 && y >= 0 && y <= 468;
}

void main() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(ballIn(x, y) ? 'dentro' : 'fora');
}
