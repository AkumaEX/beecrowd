import 'dart:io';

bool canCatch(int d, int vf, int vg) {
  double sg = vg * 12 / vf;
  return sg * sg >= d * d + 12 * 12;
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [d, vf, vg] = line!.split(' ').map(int.parse).toList();
    print(canCatch(d, vf, vg) ? 'S' : 'N');
  }
}