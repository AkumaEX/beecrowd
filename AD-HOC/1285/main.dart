import 'dart:io';

int maxQuantity(int m, int n) {
  int quantity = n - m + 1;
  for (int num = m; num < n + 1; num++) {
    if (num.toString().split('').toSet().length != num.toString().length) quantity--;
  }
  return quantity;
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [m, n] = line!.split(' ').map(int.parse).toList();
    print(maxQuantity(m, n));
  }
}
