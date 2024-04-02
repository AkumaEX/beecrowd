import 'dart:io';

Map<String, double> getProducts() {
  Map<String, double> products = {};
  int m = int.parse(stdin.readLineSync()!);
  while (m-- > 0) {
    var [product, price] = stdin.readLineSync()!.split(' ');
    products[product] = double.parse(price);
  }
  return products;
}

double getTotal(Map<String, double> products) {
  double total = 0;
  int p = int.parse(stdin.readLineSync()!);
  while (p-- > 0) {
    var [product, qty] = stdin.readLineSync()!.split(' ');
    total += products[product]! * int.parse(qty);
  }
  return total;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    Map<String, double> products = getProducts();
    double total = getTotal(products);
    print('R\$ ${total.toStringAsFixed(2)}');
  }
}
