import 'dart:io';

void main() {
  int n;
  for (int experiment = 1; (n = int.parse(stdin.readLineSync()!)) > -1; experiment++) {
    print('Experiment $experiment: ${n ~/ 2} full cycle(s)');
  }
}
