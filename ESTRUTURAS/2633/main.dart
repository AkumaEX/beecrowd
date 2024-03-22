import 'dart:io';

void formattedPrint(Map<int, String> meats) {
  print(Map.fromEntries(meats.entries.toList()..sort((a, b) => a.key.compareTo(b.key))).values.join(' '));
}

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    Map<int, String> meats = {};
    int n = int.parse(line!);
    for (int times = 0; times < n; times++) {
      var [meat, date] = stdin.readLineSync()!.split(' ');
      meats[int.parse(date)] = meat;
    }
    formattedPrint(meats);
  }
}
