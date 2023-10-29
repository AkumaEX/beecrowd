import 'dart:io';

List<Set<String>> getServers(int m) {
  List<Set<String>> servers = [];
  for (int times = 0; times < m; times++) {
    Set<String> q = stdin.readLineSync()!.split(' ').sublist(1).toSet();
    servers.add(q);
  }
  return servers;
}

int getConnections(int n, List<Set<String>> servers) {
  int connections = 0;
  for (int times = 0; times < n; times++) {
    Set<String> p = stdin.readLineSync()!.split(' ').sublist(1).toSet();
    for (Set server in servers) if (p.any((app) => server.contains(app))) connections++;
  }
  return connections;
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (m > 0 && n > 0) {
    List<Set<String>> servers = getServers(m);
    int connections = getConnections(n, servers);
    print(connections);
    [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
