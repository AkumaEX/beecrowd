import 'dart:io';

int smallestFactorialSum(int n) {
  int k = 0;
  List<int> factorials = [40320, 5040, 720, 120, 24, 6, 2, 1];
  for (int a in factorials) {
    while (n >= a) {
      n -= a;
      k += 1;
    }
    if (n == 0) break;
  }
  return k;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(smallestFactorialSum(n));
}
