def set_edges(graph, strings):
    for i, string in enumerate(strings):
        graph[string] = [other_string for other_string in strings[i+1:] if len(other_string) > len(string) and string in other_string]


def get_max_depth(max_depth, graph, nodes):
    if len(nodes) == 0:
        return 0
    depths = [0]
    for node in nodes:
        if not max_depth.get(node):
            max_depth[node] = get_max_depth(max_depth, graph, graph[node])
        depths.append(max_depth[node])
    
    return 1 + max(depths)
 

while (N := int(input())):
    strings = [input() for _ in range(N)]
    strings.sort(key=len)
    graph = {string: [] for string in strings}
    set_edges(graph, strings)
    max_depth = {}
    print(get_max_depth(max_depth, graph, graph.keys()))
