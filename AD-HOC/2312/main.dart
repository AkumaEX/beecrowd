import 'dart:io';

List<List<dynamic>> getMedals() {
  List<List<dynamic>> medals = [];
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [country, gold, silver, bronze] = stdin.readLineSync()!.split(' ');
    medals.add([country, int.parse(gold), int.parse(silver), int.parse(bronze)]);
  }
  return medals;
}

void formattedPrint(List<List<dynamic>> medals) {
  List<List<dynamic>> countries = medals
    ..sort((a, b) {
      for (int i = 1; i < 4; i++) if (b[i] - a[i] != 0) return b[i] - a[i];
      return a[0].compareTo(b[0]);
    });
  for (List<dynamic> country in countries) print(country.join(' '));
}

void main() {
  List<List<dynamic>> medals = getMedals();
  formattedPrint(medals);
}
