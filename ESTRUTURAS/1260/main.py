from sys import stdin


def get_trees():
    trees = {}
    for tree in map(str.strip, stdin):
        if not tree:
            break
        if not tree in trees:
            trees[tree] = 0
        trees[tree] += 1
    return trees


def formatted_print(c, trees):
    if c:
        print()
    total = sum(trees.values())
    for tree in sorted(trees.keys()):
        print(f'{tree} {100 * trees[tree] / total:.4f}')


n = int(input())
input()
for c in range(n):
    formatted_print(c, get_trees())
