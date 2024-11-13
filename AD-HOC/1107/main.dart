import 'dart:io';

int numLasers(int a, int c, List<int> x) {
  int lasers = a - x.first;
  for (int i = 1; i < c; i++) {
    if (x[i - 1] > x[i]) lasers += x[i - 1] - x[i];
  }
  return lasers;
}

void main() {
  var [a, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a > 0 || c > 0) {
    List<int> x = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(numLasers(a, c, x));
    [a, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
