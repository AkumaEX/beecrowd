import 'dart:io';

void main() {
  List<int> scores = stdin.readLineSync()!.split(' ').map(int.parse).toList()..sort();
  print(scores[1]);
}
