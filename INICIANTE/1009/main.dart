import 'dart:io';

void main() {
  stdin.readLineSync()!;
  double salary = double.parse(stdin.readLineSync()!);
  double sales = double.parse(stdin.readLineSync()!);
  double total = salary + sales * 0.15;
  print('TOTAL = R\$ ${total.toStringAsFixed(2)}');
}
