import 'dart:io';

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) != 0) {
    List<int> h = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    List<bool> directions = [];
    for (int i = 0; i < n; i++) {
      bool is_ascending = (h[(i + 1) % n] - h[i]) > 0;
      directions.add(is_ascending);
    }
    int peaks = 0;
    for (int i = 0; i < n; i++) {
      bool direction_change = directions[(i + 1) % n] != directions[i];
      if (direction_change) peaks += 1;
    }
    print(peaks);
  }
}
