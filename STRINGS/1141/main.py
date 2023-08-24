def get_max_sequence(strings):
    graph = get_graph(strings)



def get_graph(strings):
    graph = {}
    for i, string in enumerate(strings):
        graph[string] = get_arcs(string, strings[i+1:])
    return graph


def get_arcs(substring, strings):
    return list(filter(lambda string: substring in string, strings))
    

N = int(input())
while N != 0:
    strings = [input() for i in range(N)]
    strings.sort(key=len)

    N = int(input())
