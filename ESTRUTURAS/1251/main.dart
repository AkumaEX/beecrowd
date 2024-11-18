import 'dart:io';

List<MapEntry<int, int>> getFrequencies(String line) {
  Map<int, int> frequencies = {};
  for (int c in line.codeUnits) {
    frequencies[c] = (frequencies[c] ?? 0) + 1;
  }
  return frequencies.entries.toList()
    ..sort((a, b) {
      int diff = a.value.compareTo(b.value);
      if (diff == 0) diff = b.key.compareTo(a.key);
      return diff;
    });
}

void formattedPrint(int i, List<MapEntry<int, int>> frequencies) {
  if (i > 0) print('');
  for (MapEntry<int, int> frequency in frequencies) {
    print('${frequency.key} ${frequency.value}');
  }
}

void main() {
  int i = 0;
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    formattedPrint(i++, getFrequencies(line!));
  }
}
