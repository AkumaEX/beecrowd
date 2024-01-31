import 'dart:io';

void printResults(double n, double l, double q, List<String> participants) {
  l *= 10;
  q *= 10;
  int last = 0;
  while (l > q) {
    l -= q;
    last++;
  }
  print('${participants[last % n.toInt()]} ${(l / 10).toStringAsFixed(1)}');
}

void main() {
  var [n, l, q] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  List<String> participants = stdin.readLineSync()!.split(' ').toList();
  printResults(n, l, q, participants);
}
