import 'dart:io';

int total(int n, int a, int b) {
  return n ~/ a + n ~/ b - n * a.gcd(b) ~/ (a * b);
}

void main() {
  var [n, a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (n > 0) {
    print(total(n, a, b));
    [n, a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
