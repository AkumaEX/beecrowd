import 'dart:io';

void main(List<String> args) {
  double total = 0;
  List<String>? data = stdin.readLineSync()?.split(' ');
  while (data != null) {
    total += int.parse(data[1]) * double.parse(data[2]);
    data = stdin.readLineSync()?.split(' ');
  }
  print('VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}');
}
