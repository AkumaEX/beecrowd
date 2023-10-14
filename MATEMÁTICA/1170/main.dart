import 'dart:io';

int elapsed(double c) {
  int days = 0;
  while (c > 1) {
    days++;
    c /= 2;
  }
  return days;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    double c = double.parse(stdin.readLineSync()!);
    print('${elapsed(c)} dias');
  }
}
