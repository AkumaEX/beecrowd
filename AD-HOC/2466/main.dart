import 'dart:io';

int lastColor(List<int> colors) {
  while (colors.length > 1) colors = _nextRow(colors);
  return colors.last;
}

List<int> _nextRow(List<int> colors) {
  List<int> nextRow = [];
  for (int i = 0; i < colors.length - 1; i++) nextRow.add(colors[i] == colors[i + 1] ? 1 : -1);
  return nextRow;
}

void main() {
  stdin.readLineSync();
  List<int> colors = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(lastColor(colors) > 0 ? 'preta' : 'branca');
}
