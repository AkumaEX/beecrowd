def get_servers(m):
    servers = []
    for _ in range(m):
        q = set(input().split()[1:])
        servers.append(q)
    return servers


def get_connections(n, servers):
    connections = 0
    for _ in range(n):
        p = set(input().split()[1:])
        for server in servers:
            connections += not p.isdisjoint(server)
    return connections


m, n = tuple(map(int, input().split()))
while (m > 0 and n > 0):
    servers = get_servers(m)
    connections = get_connections(n, servers)
    print(connections)
    m, n = tuple(map(int, input().split()))
