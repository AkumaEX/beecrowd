import 'dart:collection';
import 'dart:io';

int minDistance(int n, int m) {
  int distance = 0;
  List<int> parent = List.generate(n, (i) => i);
  SplayTreeMap<int, List<List<int>>> edges = _getEdges(m);
  for (int c in edges.keys) {
    for (var [u, v] in edges[c]!) {
      int uRep = _find(parent, u);
      int vRep = _find(parent, v);
      if (uRep != vRep) {
        parent[uRep] = vRep;
        distance += c;
      }
    }
  }
  return distance;
}

SplayTreeMap<int, List<List<int>>> _getEdges(int m) {
  SplayTreeMap<int, List<List<int>>> edges = SplayTreeMap<int, List<List<int>>>();
  for (int times = 0; times < m; times++) {
    var [u, v, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    if (!edges.containsKey(c)) {
      edges[c] = <List<int>>[];
    }
    edges[c]!.add([u - 1, v - 1]);
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
  var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(minDistance(n, m));
}
