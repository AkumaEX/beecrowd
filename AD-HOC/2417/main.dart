import 'dart:io';

String topTeam(int cv, int ce, int cs, int fv, int fe, int fs) {
  int cScore = 3 * cv + ce;
  int fScore = 3 * fv + fe;
  if (cScore == fScore) {
    cScore += cs;
    fScore += fs;
  }
  if (cScore > fScore) return 'C';
  if (fScore > cScore) return 'F';
  return '=';
}

void main() {
  var [cv, ce, cs, fv, fe, fs] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(topTeam(cv, ce, cs, fv, fe, fs));
}
