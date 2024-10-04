import 'dart:io';

int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

int lcm(int a, int b) {
  return a * b ~/ gcd(a, b);
}

int nextAlignment(int m, int l1, int l2, int l3) {
  return lcm(lcm(l1, l2), l3) - m;
}

void main() {
  int m;
  while ((m = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    var [l1, l2, l3] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(nextAlignment(m, l1, l2, l3));
  }
}
