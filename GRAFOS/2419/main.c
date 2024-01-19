#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

char **getMap(int m, int n);
bool isCoast(char **map, int i, int j, int m, int n);
void freeMap(char **map, int m);

int coastSize(int m, int n) {
    int size = 0;
    char **map = getMap(m, n);
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++)
            if (isCoast(map, i, j, m, n)) size++;
    }
    freeMap(map, m);
    return size;
}

char **getMap(int m, int n) {
    char **map = malloc(m * sizeof(char *));
    for (int i = 0; i < m; i++) {
        map[i] = malloc(n * sizeof(char));
        for (int j = 0; j < n; j++)
            scanf(" %c", &map[i][j]);
    }
    return map;
}

bool isCoast(char **map, int i, int j, int m, int n) {
    if (map[i][j] == '#') {
        if (i == 0 || i == m - 1 || j == 0 || j == n - 1) return true;
        if (map[i - 1][j] == '.' || map[i + 1][j] == '.' || map[i][j - 1] == '.' || map[i][j + 1] == '.') return true;
    }
    return false;
}

void freeMap(char **map, int m) {
    for (int i = 0; i < m; i++)
        free(map[i]);
    free(map);
}

int main() {
    int m, n;
    scanf("%d %d", &m, &n);
    printf("%d\n", coastSize(m, n));
    return 0;
}
