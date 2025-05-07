import 'dart:io';

void main() {
  stdin.readLineSync()!;
  double salary = double.parse(stdin.readLineSync()!);
  double sales = double.parse(stdin.readLineSync()!);
  print('TOTAL = R\$ ${(salary + sales * 0.15).toStringAsFixed(2)}');
}
