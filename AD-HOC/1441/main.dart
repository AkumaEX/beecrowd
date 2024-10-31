import 'dart:io';

int maxOf(int h) {
  int maxValue = h;
  while (h != 1) {
    h = h.isOdd ? 3 * h + 1 : h ~/ 2;
    if (h > maxValue) maxValue = h;
  }
  return maxValue;
}

void main() {
  int h;
  while ((h = int.parse(stdin.readLineSync() ?? '0')) != 0) {
    print(maxOf(h));
  }
}
