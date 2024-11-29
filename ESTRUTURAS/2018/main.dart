import 'dart:io';

Map<String, List<int>> getMedals() {
  Map<String, List<int>> medals = {};
  while ((stdin.readLineSync()) != null) {
    for (int medal = 0; medal < 3; medal++) {
      String country = stdin.readLineSync()!;
      if (!medals.containsKey(country)) medals[country] = [0, 0, 0];
      medals[country]![medal]++;
    }
  }
  return medals;
}

void formattedPrint(Map<String, List<int>> medals) {
  print('Quadro de Medalhas');
  for (MapEntry country in medals.entries.toList()
    ..sort((a, b) {
      int diff = b.value[0] - a.value[0];
      if (diff == 0) diff = b.value[1] - a.value[1];
      if (diff == 0) diff = b.value[2] - a.value[2];
      if (diff == 0) diff = a.key.compareTo(b.key);
      return diff;
    })) {
    print('${country.key} ${country.value.join(' ')}');
  }
}

void main() {
  Map<String, List<int>> medals = getMedals();
  formattedPrint(medals);
}
