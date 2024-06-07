results = {3: 'terno', 4: 'quadra', 5: 'quina', 6: 'sena'}

your = set(map(int, input().split()))
draw = set(map(int, input().split()))
hits = len(your & draw)
print(results.get(hits, 'azar'))
