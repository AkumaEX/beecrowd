import 'dart:io';

double total(int code, int qty) {
  List<double> prices = [4.0, 4.5, 5.0, 2.0, 1.5];
  return prices[code - 1] * qty;
}

void main() {
  var [code, qty] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print('Total: R\$ ${total(code, qty).toStringAsFixed(2)}');
}
