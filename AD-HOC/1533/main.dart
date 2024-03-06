import 'dart:io';

int mostSuspicios(int n, List<int> suspects) {
  int second = ([...suspects]..sort())[n - 2];
  return suspects.indexOf(second) + 1;
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    List<int> suspects = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(mostSuspicios(n, suspects));
  }
}
