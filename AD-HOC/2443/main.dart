import 'dart:io';

void printQuotient(int a, int b, int c, int d) {
  int numerator = a * d + b * c;
  int denominator = b * d;
  int gcd = numerator.gcd(denominator);
  print('${numerator ~/ gcd} ${denominator ~/ gcd}');
}

void main() {
  var [a, b, c, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  printQuotient(a, b, c, d);
}
