import 'dart:io';

void main() {
  List<int> even = [];
  List<int> odd = [];
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    int num = int.parse(stdin.readLineSync()!);
    num % 2 == 0 ? even.add(num) : odd.add(num);
  }
  even.sort((a, b) => (a - b));
  odd.sort((a, b) => (b - a));
  for (int num in even + odd) print(num);
}
