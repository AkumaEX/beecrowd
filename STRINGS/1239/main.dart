import 'dart:io';

String translate(String line) {
  line = line.replaceAllMapped(RegExp(r'_(.*?)_'), (m) => '<i>${m[1]}</i>');
  return line.replaceAllMapped(RegExp(r'\*(.*?)\*'), (m) => '<b>${m[1]}</b>');
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    print(translate(line!));
  }
}
