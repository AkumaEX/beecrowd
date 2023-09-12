import 'dart:io';

void main() {
  int k;
  while ((k = int.parse(stdin.readLineSync()!)) != 0) {
    var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    for (int i = 0; i < k; i++) {
      var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      if (x == n || y == m) {
        print('divisa');
      } else if (x < n) {
        if (y < m) {
          print('SO');
        } else {
          print('NO');
        }
      } else if (y < m) {
        print('SE');
      } else {
        print('NE');
      }
    }
  }
}
