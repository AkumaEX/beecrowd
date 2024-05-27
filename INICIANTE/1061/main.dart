import 'dart:io';

int seconds(int startD, int startH, int startM, int startS, int endD, int endH, int endM, int endS) {
  return 86400 * (endD - startD) + 3600 * (endH - startH) + 60 * (endM - startM) + (endS - startS);
}

void formattedPrint(int elapsed) {
  print('${elapsed ~/ 86400} dia(s)');
  elapsed %= 86400;
  print('${elapsed ~/ 3600} hora(s)');
  elapsed %= 3600;
  print('${elapsed ~/ 60} minuto(s)');
  print('${elapsed % 60} segundo(s)');
}

void main() {
  int startD = int.parse(stdin.readLineSync()!.split(' ')[1]);
  var [startH, startM, startS] = stdin.readLineSync()!.split(' : ').map(int.parse).toList();
  int endD = int.parse(stdin.readLineSync()!.split(' ')[1]);
  var [endH, endM, endS] = stdin.readLineSync()!.split(' : ').map(int.parse).toList();
  int elapsed = seconds(startD, startH, startM, startS, endD, endH, endM, endS);
  formattedPrint(elapsed);
}
