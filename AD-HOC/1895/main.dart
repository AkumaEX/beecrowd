import 'dart:io';

void main() {
  var [a, b] = [0, 0];
  var [n, t, l] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int i = 0; i < n ~/ 2; i++) {
    int s = int.parse(stdin.readLineSync()!);
    if ((t - s).abs() <= l) {
      a += (t - s).abs();
      t = s;
    }
    s = int.parse(stdin.readLineSync()!);
    if ((t - s).abs() <= l) {
      b += (t - s).abs();
      t = s;
    }
  }
  print('$a $b');
}
