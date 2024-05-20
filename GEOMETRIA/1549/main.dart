import 'dart:io';
import 'dart:math';

double h(int n, int l, int b, int B, int H) {
  if (b == B) return l / (n * pi * pow(b, 2));
  num r = pow(((3 * l * (B - b)) / (n * pi * H)) + pow(b, 3), 1 / 3);
  return H * (r - b) / (B - b);
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    var [n, l] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    var [b, B, H] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(h(n, l, b, B, H).toStringAsFixed(2));
  }
}
