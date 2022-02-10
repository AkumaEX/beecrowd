import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int hours = int.parse(stdin.readLineSync()!);
  double wage = double.parse(stdin.readLineSync()!);
  double salary = hours * wage;
  print('NUMBER = $number');
  print('SALARY = U\$ ${salary.toStringAsFixed(2)}');
}
