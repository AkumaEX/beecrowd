import 'dart:io';

String worldChampion() {
  List<String> teams = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P'];
  for (int knockout in [8, 4, 2, 1]) teams = _results(teams, knockout);
  return teams.first;
}

List<String> _results(List<String> teams, int knockout) {
  for (int teamM = 0, teamN = 1; teamM < knockout; teamM++, teamN++) {
    var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    teams.removeAt(m > n ? teamN : teamM);
  }
  return teams;
}

void main() {
  print(worldChampion());
}
