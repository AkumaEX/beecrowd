import 'dart:io';

int phillBonati(int n, List<int> memo) {
  if (memo[n] == 0) {
    if (n < 2)
      memo[n] = n;
    else if (n.isOdd)
      memo[n] = phillBonati(n - 1, memo) * phillBonati(n - 2, memo);
    else
      memo[n] = phillBonati(n - 1, memo) + phillBonati(n - 2, memo);
  }
  return memo[n];
}

void main() {
  List<int> memo = List.filled(18, 0);
  int n;
  while ((n = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    print(phillBonati(n - 1, memo));
  }
}
