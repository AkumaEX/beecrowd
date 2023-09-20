import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int t = int.parse(stdin.readLineSync()!);
    List<int> shoot = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    String jump = stdin.readLineSync()!;
    int hit = 0;
    for (int j = 0; j < t; j++) {
      if (shoot[j] > 2 && jump[j] == 'J' || shoot[j] < 3 && jump[j] == 'S') hit++;
    }
    print(hit);
  }
}
