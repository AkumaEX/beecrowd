import 'dart:io';

(int, int) startEnd(int x, int y) {
  return x < y ? (x + 1, y) : (y + 1, x);
}

int evensTotal(int x, int y) {
  int total = 0;
  for (int num = x; num < y; num++) if (num % 2 == 1) total += num;
  return total;
}

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  var (start, end) = startEnd(x, y);
  print(evensTotal(start, end));
}
