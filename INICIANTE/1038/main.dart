import 'dart:io';

void main() {
  List<double> prices = [0.0, 4.0, 4.5, 5.0, 2.0, 1.5];
  var [code, quantity] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print('Total: R\$ ${(prices[code] * quantity).toStringAsFixed(2)}');
}
