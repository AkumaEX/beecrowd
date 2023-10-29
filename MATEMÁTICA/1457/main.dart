import 'dart:io';

int kFactorial(int n, int i, int k) {
  if (n <= i * k) return 1;
  return (n - i * k) * kFactorial(n, i + 1, k);
}

void main() {
  RegExp pattern = RegExp(r'(\d+)(\!+)');
  int t = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < t; times++) {
    RegExpMatch match = pattern.allMatches(stdin.readLineSync()!).first;
    var [number, exclamations] = [match.group(1)!, match.group(2)!];
    var [n, k] = [int.parse(number), exclamations.length];
    print(kFactorial(n, 0, k));
  }
}
