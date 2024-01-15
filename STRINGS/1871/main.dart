import 'dart:io';

String noZeroSum(int m, int n) {
  return (m + n).toString().replaceAll('0', '');
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (m > 0 && n > 0) {
    print(noZeroSum(m, n));
    [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
