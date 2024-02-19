import 'dart:io';
import 'dart:math';

num getNumVariations(String s) {
  return pow(3, RegExp('[AEIOS]', caseSensitive: false).allMatches(s).length) * pow(2, RegExp('[^AEIOS]', caseSensitive: false).allMatches(s).length);
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int test = 0; test < t; test++) {
    String s = stdin.readLineSync()!.trim();
    num numVariations = getNumVariations(s);
    print(numVariations);
  }
}
