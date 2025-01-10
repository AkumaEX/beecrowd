import 'dart:io';

void main() {
  int m, h = 1;
  while ((m = int.parse(stdin.readLineSync()!)) > 0) {
    List<String> cypher = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    print('Instancia ${h++}');
    for (int code in stdin.readLineSync()!.trim().split(' ').map(int.parse)) {
      stdout.write(cypher[code - 1]);
      cypher.insert(0, cypher.removeAt(code - 1));
    }
    print('\n');
  }
}
