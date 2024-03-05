import 'dart:io';

void main() {
  stdin.readLineSync();
  List<int> candidates = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int numAttended = candidates.reduce((total, attended) => total + attended);
  print(numAttended);
}
