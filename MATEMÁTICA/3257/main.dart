import 'dart:io';
import 'dart:math';

int days(int n, List<int> t) {
  t.sort((a, b) => b - a);
  for (int i = 0; i < n; i++) t[i] += i + 2;
  return t.reduce(max);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> t = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(days(n, t));
}
