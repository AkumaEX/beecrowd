import 'dart:io';

void main() {
  var [totalPrice, totalWeight] = [0.0, 0.0];
  int n = int.parse(stdin.readLineSync()!);
  for (int day = 1; day < n + 1; day++) {
    totalPrice += double.parse(stdin.readLineSync()!);
    int weight = stdin.readLineSync()!.split(' ').length;
    print('day $day: $weight kg');
    totalWeight += weight;
  }
  print('${(totalWeight / n).toStringAsFixed(2)} kg by day');
  print('R\$ ${(totalPrice / n).toStringAsFixed(2)} by day');
}
