import 'dart:io';

double score(List<double> n) {
  n.sort();
  return n[1] + n[2] + n[3];
}

void main() {
  List<double> n = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print(score(n).toStringAsFixed(1));
}
