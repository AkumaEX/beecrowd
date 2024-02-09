import 'dart:io';

void main() {
  List<double> prices = [];
  int n = int.parse(stdin.readLineSync()!);
  for (int store = 0; store < n; store++) {
    var [p, g] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    prices.add(1000 * p / g);
  }
  prices.sort();
  print('${prices.first.toStringAsFixed(2)}');
}
