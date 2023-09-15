import 'dart:io';

void main() {
  var [h1, m1, h2, m2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (h1 != 0 || m1 != 0 || h2 != 0 || m2 != 0) {
    if (m2 < m1) {
      h2 -= 1;
      m2 += 60;
    }
    int minutes = m2 - m1;
    if (h2 < h1) {
      h2 += 24;
    }
    minutes += (h2 - h1) * 60;
    print(minutes);
    [h1, m1, h2, m2] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
