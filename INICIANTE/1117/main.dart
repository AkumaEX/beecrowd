import 'dart:io';

double average() {
  double grade1 = double.parse(stdin.readLineSync()!);
  while (grade1 < 1 || grade1 > 10) {
    print('nota invalida');
    grade1 = double.parse(stdin.readLineSync()!);
  }
  double grade2 = double.parse(stdin.readLineSync()!);
  while (grade2 < 1 || grade2 > 10) {
    print('nota invalida');
    grade2 = double.parse(stdin.readLineSync()!);
  }
  return (grade1 + grade2) / 2;
}

void main() {
  print('media = ${average().toStringAsFixed(2)}');
}
