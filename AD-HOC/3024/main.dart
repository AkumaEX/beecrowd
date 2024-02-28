import 'dart:io';

int maximumViewpoints(int n, int x, List<int> a) {
  int max = 1;
  int viewpoints = 1;
  for (int i = 0; i < n - 1; i++) {
    if (a[i + 1] - a[i] > x)
      viewpoints = 1;
    else if (++viewpoints > max) max = viewpoints;
  }
  return max;
}

void main() {
  var [n, x] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> a = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(maximumViewpoints(n, x, a));
}
