import 'dart:io';

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  while (n != 0) {
    for (int m = 1; m > 0; m++) {
      List<int> regions = [for (int i = 1; i <= n; i++) i];
      int selected = 0;

      while (regions.length > 1) {
        int region = regions.removeAt(selected);
        if (region == 13) break;
        selected = (selected + m - 1) % regions.length;
      }

      if (regions.last == 13) {
        print(m);
        break;
      }
    }
    n = int.parse(stdin.readLineSync()!);
  }
}
