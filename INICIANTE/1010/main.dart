import 'dart:io';

void main(List<String> args) {
  double total = 0;
  for (int i = 0; i < 2; i++) {
    var [code, quantity, value] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    total += quantity * value;
  }
  print('VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}');
}
