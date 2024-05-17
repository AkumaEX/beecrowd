import 'dart:io';

double elapsed(int s, int va, int vb) {
  return s / (va - vb);
}

void formattedPrint(double time) {
  print(time < 0 ? 'impossivel' : time.toStringAsFixed(2));
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [s, va, vb] = line!.split(' ').map(int.parse).toList();
    formattedPrint(elapsed(s, va, vb));
  }
}
