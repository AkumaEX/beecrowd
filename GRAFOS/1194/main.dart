import 'dart:io';

Map<String, List<String>> getNodes(String s1) {
  Map<String, List<String>> graph = {};
  s1.split('').forEach((data) {
    graph[data] = [];
  });
  return graph;
}

String addEdges(RuneIterator nodes, RuneIterator leaves, Map<String, List<String>> graph) {
  nodes.moveNext();
  leaves.moveNext();
  String leaf = leaves.currentAsString;
  String parent = nodes.currentAsString;
  List<String> path = [parent];
  while (nodes.moveNext()) {
    String child = nodes.currentAsString;
    graph[parent]!.add(child);
    path.add(child);
    [parent, leaf] = _backtrackIfLeaf(child, leaf, path, leaves);
  }
  return path.first;
}

List<String> _backtrackIfLeaf(String node, String leaf, List<String> path, RuneIterator leaves) {
  if (node == leaf) {
    while (leaves.moveNext()) {
      leaf = leaves.currentAsString;
      if (!path.contains(leaf)) break;
      node = leaf;
    }
  }
  return [node, leaf];
}

String postOrder(String parent, Map<String, List<String>> graph) {
  String children = '';
  graph[parent]!.forEach((child) {
    if (graph[parent]!.isNotEmpty) children += postOrder(child, graph);
  });
  return children + parent;
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < c; times++) {
    var [_, s1, s2] = stdin.readLineSync()!.split(' ');
    Map<String, List<String>> graph = getNodes(s1);
    String treeRoot = addEdges(s1.runes.iterator, s2.runes.iterator, graph);
    print(postOrder(treeRoot, graph));
  }
}
