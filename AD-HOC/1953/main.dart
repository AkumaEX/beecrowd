import 'dart:io';

List<int> attended(int n) {
  int epr = 0;
  int ehd = 0;
  int intruders = 0;
  while (n-- > 0) {
    String course = stdin.readLineSync()!.split(' ')[1];
    if (course == 'EPR')
      epr++;
    else if (course == 'EHD')
      ehd++;
    else
      intruders++;
  }
  return [epr, ehd, intruders];
}

void formattedPrint(int epr, int ehd, int intruders) {
  print('EPR: $epr');
  print('EHD: $ehd');
  print('INTRUSOS: $intruders');
}

void main() {
  String? n;
  while ((n = stdin.readLineSync()) != null) {
    var [epr, ehd, intruders] = attended(int.parse(n!));
    formattedPrint(epr, ehd, intruders);
  }
}
