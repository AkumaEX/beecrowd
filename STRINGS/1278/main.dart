import 'dart:io';

(List<String>, int) getLines(int n) {
  List<String> lines = <String>[];
  int maxSize = 0;
  for (int times = 0; times < n; times++) {
    String line = stdin.readLineSync()!.trim().replaceAll(RegExp(r'\s+'), ' ');
    lines.add(line);
    int lineSize = line.length;
    if (lineSize > maxSize) maxSize = lineSize;
  }
  return (lines, maxSize);
}

void formattedPrint(List<String> lines, int maxSize) {
  for (String line in lines) print(line.padLeft(maxSize));
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n > 0) {
    var (lines, maxSize) = getLines(n);
    formattedPrint(lines, maxSize);
    if ((n = int.parse(stdin.readLineSync()!)) > 0) {
      print('');
    }
  }
}
