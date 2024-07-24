import 'dart:io';
import 'dart:math';

String classify(List<int> sides) {
  sides.sort((a, b) => a - b);
  if (pow(sides[2], 2) == pow(sides[1], 2) + pow(sides[0], 2)) {
    if (sides[2].gcd(sides[1]).gcd(sides[0]) == 1) return 'tripla pitagorica primitiva';
    return 'tripla pitagorica';
  }
  return 'tripla';
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    List<int> sides = line!.split(' ').map(int.parse).toList();
    print(classify(sides));
  }
}
