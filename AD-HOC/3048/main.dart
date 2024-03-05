import 'dart:io';

void main() {
  int maxSequence = 1;
  int n = int.parse(stdin.readLineSync()!);
  String previous = stdin.readLineSync()!;
  for (int i = 1; i < n; i++) {
    String next = stdin.readLineSync()!;
    if (previous != next) maxSequence++;
    previous = next;
  }
  print(maxSequence);
}
