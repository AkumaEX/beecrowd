import 'dart:io';

int squares(int n, Map<int, int> lookup) {
  if (!lookup.containsKey(n)) {
    lookup[n] = n * n + squares(n - 1, lookup);
  }
  return lookup[n]!;
}

void main() {
  Map<int, int> lookup = {1: 1};
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    print(squares(n, lookup));
  }
}
