import 'dart:io';
import 'dart:math';

void main() {
  List<int> sequence = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(sequence.reduce(max));
}
