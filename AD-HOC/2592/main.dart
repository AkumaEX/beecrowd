import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    int tries = 0;
    List<String> line;
    while ((line = stdin.readLineSync()!.split(' ')).length > 1) tries++;
    print(tries);
    n = int.parse(line.first);
  }
}
