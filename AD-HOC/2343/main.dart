import 'dart:collection';
import 'dart:io';

bool samePlace(int n) {
  HashSet<String> lightnings = new HashSet<String>();
  for (int i = 0; i < n; i++) lightnings.add(stdin.readLineSync()!);
  print(lightnings);
  return lightnings.length < n;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(samePlace(n) ? '1' : '0');
}
