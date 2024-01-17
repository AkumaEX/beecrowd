import 'dart:collection';
import 'dart:io';

int minDistance(int m, int n) {
  int distance = 0;
  List<int> parent = List.generate(m, (i) => i);
  SplayTreeMap<int, List<List<int>>> edges = _getEdges(n);
  for (int z in edges.keys) {
    for (var [x, y] in edges[z]!) {
      int xRep = _find(parent, x);
      int yRep = _find(parent, y);
      if (xRep != yRep) {
        parent[xRep] = yRep;
        distance += z;
      }
    }
  }
  return distance;
}

SplayTreeMap<int, List<List<int>>> _getEdges(int n) {
  SplayTreeMap<int, List<List<int>>> edges = SplayTreeMap<int, List<List<int>>>();
  for (int times = 0; times < n; times++) {
    var [x, y, z] = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    if (!edges.containsKey(z)) {
      edges[z] = [];
    }
    edges[z]!.add([x, y]);
  }
  return edges;
}

int _find(List<int> parent, int i) {
  if (parent[i] != i) {
    parent[i] = _find(parent, parent[i]);
  }
  return parent[i];
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (m > 0 && n > 0) {
    print(minDistance(m, n));
    [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
