import 'dart:io';

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) != 0) {
    var [scoreA, scoreB] = [0, 0];
    for (int times = 0; times < n; times++) {
      var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      if (a > b) scoreA++;
      else if (b > a) scoreB++;
    }
    print('$scoreA $scoreB');
  }
}
