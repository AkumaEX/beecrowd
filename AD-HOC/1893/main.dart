import 'dart:io';

String moonStage(int before, int after) {
  if (after < 3) return 'nova';
  if (after > 96) return 'cheia';
  if (after > before) return 'crescente';
  return 'minguante';
}

void main() {
  var [before, after] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(moonStage(before, after));
}
