import 'dart:io';

int survivor(int n, int k) {
  if (n == 1) return 1;
  return ((survivor(n - 1, k) + k - 1) % n) + 1;
}

void main() {
  int nc = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= nc; i++) {
    List<String> data = stdin.readLineSync()!.split(' ');
    int n = int.parse(data[0]);
    int k = int.parse(data[1]);
    print('Case $i: ${survivor(n, k)}');
  }
}
