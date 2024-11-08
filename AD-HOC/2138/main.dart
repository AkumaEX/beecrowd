import 'dart:io';

String mostFrequent(String n) {
  Map<String, int> frequency = {};
  for (int i = 0; i < n.length; i++) {
    String digit = n[i];
    if (!frequency.containsKey(digit)) frequency[digit] = 0;
    frequency[digit] = frequency[digit]! + 1;
  }
  return (frequency.entries.toList()
        ..sort((a, b) {
          int diff = b.value.compareTo(a.value);
          if (diff == 0) diff = b.key.compareTo(a.key);
          return diff;
        }))
      .first
      .key;
}

void main() {
  String? n;
  while ((n = stdin.readLineSync()) != null) {
    print(mostFrequent(n!));
  }
}
