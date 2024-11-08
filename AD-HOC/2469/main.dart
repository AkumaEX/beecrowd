import 'dart:io';

dynamic mostFrequent() {
  Map<int, int> frequency = {};
  for (int grade in stdin.readLineSync()!.split(' ').map(int.parse)) {
    if (!(frequency.containsKey(grade))) frequency[grade] = 0;
    frequency[grade] = frequency[grade]! + 1;
  }
  return (frequency.entries.toList()
        ..sort((a, b) {
          var diff = b.value.compareTo(a.value);
          if (diff == 0) diff = b.key.compareTo(a.key);
          return diff;
        }))
      .first
      .key;
}

void main() {
  stdin.readLineSync();
  print(mostFrequent());
}
