import 'dart:io';

int fibonacci(int n, Map<int, int> lookup) {
  if (n < 2) return n;
  if (lookup[n] == null) {
    lookup[n] = fibonacci(n - 1, lookup) + fibonacci(n - 2, lookup);
  }
  return lookup[n]!;
}

void main(List<String> args) {
  Map<int, int> lookup = {};
  int N = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < N; i++) {
    int n = int.parse(stdin.readLineSync()!);
    int result = fibonacci(n, lookup);
    int num_calls = 2 * fibonacci(n + 1, lookup) - 2;
    print('fib($n) = $num_calls calls = $result');
  }
}
