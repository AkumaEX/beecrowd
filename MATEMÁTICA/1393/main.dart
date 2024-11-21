import 'dart:io';

int fibonnacci(int n, List<int> memo) {
  if (memo[n] > 0) return memo[n];
  memo[n] = n < 2 ? n : fibonnacci(n - 1, memo) + fibonnacci(n - 2, memo);
  return memo[n];
}

void main() {
  List<int> memo = List.filled(42, 0);
  int n;
  while ((n = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    print(fibonnacci(n + 1, memo));
  }
}
