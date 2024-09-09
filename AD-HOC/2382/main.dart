import 'dart:io';
import 'dart:math';

bool fits(int l, int a, int p, int r) {
  return sqrt(pow(l, 2) + pow(a, 2) + pow(p, 2)) <= r * 2;
}

void main() {
  var [l, a, p, r] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(fits(l, a, p, r) ? 'S' : 'N');
}
