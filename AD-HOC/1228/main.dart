import 'dart:io';

void main() {
  String? n;
  while ((n = stdin.readLineSync()) != null) {
    List<int> start = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    List<int> finish = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int overtakes = 0;
    for (int position = 0; position < int.parse(n!); position++) {
      if (finish[position] != start[position]) {
        int before = start.indexOf(finish[position]);
        start.insert(position, start.removeAt(before));
        overtakes += before - position;
      }
    }
    print(overtakes);
  }
}
