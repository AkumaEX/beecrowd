import 'dart:io';

int factorial(int n, Map<int, int> lookup) {
  if (n < 2) return 1;
  if (lookup[n] == null) lookup[n] = n * factorial(n - 1, lookup);
  return lookup[n]!;
}

void main(List<String> args) {
  List<String>? line;
  Map<int, int> lookup = {};
  while ((line = stdin.readLineSync()?.split(' ')) != null) {
    int m = int.parse(line![0]);
    int n = int.parse(line[1]);
    print(factorial(m, lookup) + factorial(n, lookup));
  }
}
