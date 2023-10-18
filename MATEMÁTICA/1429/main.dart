import 'dart:io';

int decimal(int acm) {
  List<int> factorial = [1, 1, 2, 6, 24, 120];
  int result = 0;
  for (int i = 1; acm > 0; i++) {
    int digit = acm % 10;
    result += digit * factorial[i];
    acm = acm ~/ 10;
  }
  return result;
}

void main() {
  int acm;
  while ((acm = int.parse(stdin.readLineSync()!)) > 0) {
    print(decimal(acm));
  }
}
