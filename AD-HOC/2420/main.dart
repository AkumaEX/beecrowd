import 'dart:io';

int section(int n, List<int> a) {
  int target = a.reduce((acc, value) => acc + value) ~/ 2;
  int k = 0;
  for (int size = 0; size < target; size += a[k++]);
  return k;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> a = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(section(n, a));
}
