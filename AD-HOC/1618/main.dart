import 'dart:io';

int inside(int ax, int ay, int cx, int cy, int rx, int ry) {
  return ax <= rx && rx <= cx && ay <= ry && ry <= cy ? 1 : 0;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [ax, ay, _, _, cx, cy, _, _, rx, ry] = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    print(inside(ax, ay, cx, cy, rx, ry));
  }
}
