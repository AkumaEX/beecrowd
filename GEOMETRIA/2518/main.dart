import 'dart:io';
import 'dart:math';

double area(int n, int h, int c, int l) {
  double d = sqrt(pow(h, 2) + pow(c, 2));
  return n * d * l / 10000;
}

void main() async {
  int n;
  while ((n = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    var [h, c, l] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(area(n, h, c, l).toStringAsFixed(4));
  }
}
