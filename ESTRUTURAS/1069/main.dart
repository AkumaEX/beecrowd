import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    String objects = stdin.readLineSync()!;
    int diamonds = 0;
    int potential = 0;
    for (int i = 0; i < objects.length; i++) {
      if (objects[i] != '.') {
        if (objects[i] == '<') {
          potential++;
        } else if (objects[i] == '>' && potential > 0) {
          potential--;
          diamonds++;
        }
      }
    }
    print(diamonds);
  }
}
