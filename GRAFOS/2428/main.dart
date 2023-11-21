import 'dart:io';

bool canKeepProject(List<int> areas) {
  areas.sort();
  return areas[0] * areas[3] == areas[1] * areas[2];
}

void main() {
  List<int> areas = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(canKeepProject(areas) ? 'S' : 'N');
}
