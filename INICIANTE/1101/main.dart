import 'dart:io';

void formattedPrint(int m, int n) {
  if (m > n) [m, n] = [n, m];
  List<int> sequence = List<int>.generate(n - m + 1, (i) => i + m);
  print('${sequence.join(' ')} Sum=${sequence.reduce((a, b) => a + b)}');
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (m > 0 && n > 0) {
    formattedPrint(m, n);
    [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
