import 'dart:io';

void main() {
  List<String>? line;
  while ((line = stdin.readLineSync()?.toLowerCase().split('')) != null) {
    bool caps = true;
    for (int i = 0; i < line!.length; i++) {
      if (line[i] == ' ') continue;
      if (caps) line[i] = line[i].toUpperCase();
      caps = !caps;
    }
    print(line.join(''));
  }
}
