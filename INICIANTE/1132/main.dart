import 'dart:io';

int sumBetween(int x, int y) {
  if (x > y) [x, y] = [y, x];
  int sum = 0;
  for (int n = x; n <= y; n++) {
    if (n % 13 != 0) sum += n;
  }
  return sum;
}

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  print(sumBetween(x, y));
}
