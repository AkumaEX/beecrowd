import 'dart:io';

Map<String, Map<String, List<String>>> getInfos(int n) {
  Map<String, Map<String, List<String>>> infos = {};
  while (n-- > 0) {
    String name = stdin.readLineSync()!;
    var [color, size] = stdin.readLineSync()!.split(' ').toList();
    if (infos.containsKey(color)) {
      if (infos[color]!.containsKey(size)) {
        infos[color]![size]!.add(name);
      } else {
        infos[color]![size] = [name];
      }
    } else {
      infos[color] = {size: [name]};
    }
  }
  return infos;
}

void formattedPrint(Map<String, Map<String, List<String>>> infos) {
  for (String color in infos.keys.toList()..sort()) {
    for (String size in infos[color]!.keys.toList()..sort((a, b) => b.compareTo(a))) {
      for (String name in infos[color]![size]!..sort()) {
        print('$color $size $name');
      }
    }
  }
}

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  while (true) {
    Map<String, Map<String, List<String>>> infos = getInfos(n);
    formattedPrint(infos);
    if ((n = int.parse(stdin.readLineSync()!)) > 0) {
      print('');
    } else {
      break;
    }
  }
}
