import 'dart:io';

bool diagonalSearch(int x1, int y1, int x2, int y2, int h, int v) {
  if (x1 < 1 || x1 > 8 || y1 < 1 || y1 > 8) return false;
  if (x1 == x2 && y1 == y2) return true;
  return diagonalSearch(x1 + h, y1 + v, x2, y2, h, v);
}

void main() {
  var [x1, y1, x2, y2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (x1 > 0) {
    if (x1 == x2 && y1 == y2)
      print(0);
    else if (x1 == x2 || y1 == y2 || diagonalSearch(x1, y1, x2, y2, -1, -1) || diagonalSearch(x1, y1, x2, y2, -1, 1) || diagonalSearch(x1, y1, x2, y2, 1, -1) || diagonalSearch(x1, y1, x2, y2, 1, 1))
      print(1);
    else
      print(2);
    [x1, y1, x2, y2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
