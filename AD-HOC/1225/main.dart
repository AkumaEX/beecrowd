import 'dart:io';

void main() {
  String? n;
  while ((n = stdin.readLineSync()) != null) {
    List<int> notes = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int sum = notes.reduce((a, b) => a + b);
    if (sum % int.parse(n!) > 0) {
      print(-1);
    } else {
      int changes = 0;
      int average = sum ~/ int.parse(n);
      for (int note in notes) {
        if (note > average) {
          changes += note - average;
        }
      }
      print(changes + 1);
    }
  }
}
