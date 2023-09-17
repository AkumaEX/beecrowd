import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int t = 0; t < n; t++) {
    List<String> result = [];
    var [str_i, str_j] = stdin.readLineSync()!.split(' ');
    var [i, j] = [0, 0];
    while (i < str_i.length || j < str_j.length) {
      if (i < str_i.length) result.add(str_i[i++]);
      if (j < str_j.length) result.add(str_j[j++]);
    }
    print(result.join());
  }
}
