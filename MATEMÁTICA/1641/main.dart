import 'dart:io';
import 'dart:math';

bool fits(int r, int w, int l) {
  return pow(r, 2) >= pow(w / 2, 2) + pow(l / 2, 2);
}

void main() {
  List<String> line = stdin.readLineSync()!.split(' ');
  for (int pizza = 1; line.length > 1; pizza++) {
    var [r, w, l] = line.map(int.parse).toList();
    print('Pizza $pizza ${fits(r, w, l) ? 'fits on the table.' : 'does not fit on the table.'}');
    line = stdin.readLineSync()!.split(' ');
  }
}
