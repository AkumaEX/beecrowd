import 'dart:io';

void main() {
  var [n, m] = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
  while (n != 0 || m != 0) {
    List<int> tickets = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    Map<int, int> clones = {};
    for (int ticket in tickets) {
      clones[ticket] = clones.containsKey(ticket) ? 1 : 0;
    }
    print(clones.values.reduce((a, b) => a + b));
    [n, m] = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
  }
}
