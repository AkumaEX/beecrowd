import 'dart:io';

int getCategory(int k) {
  for (int category in [1, 3, 5, 10, 25, 50, 100]) {
    if (k <= category) return category;
  }
  return 0;
}

void main() {
  int k = int.parse(stdin.readLineSync()!);
  print('Top ${getCategory(k)}');
}
