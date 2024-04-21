import 'dart:io';

void main() {
  for (int n, test = 1, difference = 0; (n = int.parse(stdin.readLineSync()!)) > 0; test++, difference = 0, print('')) {
    print('Teste $test');
    while (n-- > 0) {
      var [j, z] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      difference += j - z;
      print(difference);
    }
  }
}
