import 'dart:io';

int maxLethality(int n, List<int> a) {
  a.sort();
  int lethality = 0;
  for (int i = 0; i < n ~/ 2; i++) lethality += a[n - 1 - i] - a[i];
  return lethality;
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    int n = int.parse(line!);
    List<int> a = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(maxLethality(n, a));
  }
}
