import 'dart:io';

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    print('Brasil ${(n / 90).floor()} x Alemanha ${(7 * n / 90).ceil()}');
  }
}
