import 'dart:io';

int gcd(int a, int b) {
  return b == 0 ? a : gcd(b, a % b);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    List<String> numbers = stdin.readLineSync()!.split(' ');
    int f1 = int.parse(numbers[0]);
    int f2 = int.parse(numbers[1]);
    print(gcd(f1, f2));
  }
}
