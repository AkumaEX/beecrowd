import "dart:io";

void update(List<int> desks, int a, int b) {
  int temp = desks[a];
  desks[a] = desks[b];
  desks[b] = temp;
}

int query(List<int> desks, int employee, int a) {
  if (employee == a) return 0;
  return 1 + query(desks, desks[employee], a);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int q = int.parse(stdin.readLineSync()!);

  List<int> desks = Iterable<int>.generate(n).toList();
  for (int times = 0; times < q; times++) {
    List<int> event = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int a = event[1] - 1;
    if (event.first == 1) {
      int b = event[2] - 1;
      update(desks, a, b);
    } else {
      print(query(desks, desks[a], a));
    }
  }
}
