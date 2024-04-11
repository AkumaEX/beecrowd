import 'dart:io';

List<int> elapsed(int startH, int startM, int endH, int endM) {
  int startMinutes = 60 * startH + startM;
  int endMinutes = 60 * endH + endM;
  int elapsedM = endMinutes - startMinutes;
  if (elapsedM < 1) elapsedM += 1440;
  int elapsedH = elapsedM ~/ 60;
  elapsedM = elapsedM % 60;
  return [elapsedH, elapsedM];
}

void main() {
  var [startH, startM, endH, endM] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [elapsedH, elapsedM] = elapsed(startH, startM, endH, endM);
  print('O JOGO DUROU ${elapsedH} HORA(S) E ${elapsedM} MINUTO(S)');
}
