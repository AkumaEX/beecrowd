import 'dart:io';

void main() {
  int inInterval = 0;
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    int x = int.parse(stdin.readLineSync()!);
    if (0 <= x && x <= 20) inInterval++;
  }
  print('$inInterval in');
  print('${n - inInterval} out');
}
