import 'dart:io';
import 'dart:math';

String winner(int x, int y) {
  num rafael = pow(3 * x, 2) + pow(y, 2);
  num beto = 2 * pow(x, 2) + pow(5 * y, 2);
  num carlos = -100 * x + pow(y, 3);
  
  if (rafael > beto && rafael > carlos)
    return 'Rafael';
  else if (beto > rafael && beto > carlos)
    return 'Beto';
  return 'Carlos';
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print('${winner(x, y)} ganhou');
  }
}
