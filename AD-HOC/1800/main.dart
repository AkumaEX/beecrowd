import 'dart:io';

void main() {
  int q = int.parse(stdin.readLineSync()!.split(' ').first);
  Set<int> s = stdin.readLineSync()!.split(' ').map(int.parse).toSet();
  while (q-- > 0) {
    int office = int.parse(stdin.readLineSync()!);
    if (s.contains(office)) {
      print(0);
    } else {
      print(1);
      s.add(office);
    }
  }
}
