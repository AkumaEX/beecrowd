import 'dart:io';

int getMinimum(int r, int n) {
  for (int minimum = 0; minimum < 27; minimum++) {
    if (r <= n * (1 + minimum)) return minimum;
  }
  return -1;
}

void main() {
  var [r, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int c = 1; r > 0 && n > 0; c++) {
    int minimum = getMinimum(r, n);
    print('Case $c: ${minimum >= 0 ? minimum : 'impossible'}');
    [r, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
