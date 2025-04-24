import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int hours = int.parse(stdin.readLineSync()!);
  double wage = double.parse(stdin.readLineSync()!);
  print('NUMBER = $number');
  print('SALARY = U\$ ${(hours * wage).toStringAsFixed(2)}');
}
