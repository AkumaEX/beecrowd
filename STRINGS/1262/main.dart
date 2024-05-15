import 'dart:io';

int minCycles(String sequence, int p) {
  return RegExp('R{1,$p}|W{1}').allMatches(sequence).length;
}

void main() {
  String? sequence;
  while ((sequence = stdin.readLineSync()) != null) {
    int p = int.parse(stdin.readLineSync()!);
    print(minCycles(sequence!, p));
  }
}
