#include <stdio.h>

void getField(int n, int m, int field[n][m]) {
    for (int i = 0; i < n; i++)
        for (int j = 0; j < m; j++)
            scanf("%d", &field[i][j]);
}

int getMaxWorms(int n, int m, int field[n][m]) {
    int maxWorms = 0;
    for (int i = 0; i < n; i++) {
        int worms = 0;
        for (int j = 0; j < m; j++)
            worms += field[i][j];
        if (worms > maxWorms) maxWorms = worms;
    }
    for (int j = 0; j < m; j++) {
        int worms = 0;
        for (int i = 0; i < n; i++)
            worms += field[i][j];
        if (worms > maxWorms) maxWorms = worms;
    }
    return maxWorms;
}

int main() {
    int n, m;
    scanf("%d %d", &n, &m);
    int field[n][m];
    getField(n, m, field);
    printf("%d\n", getMaxWorms(n, m, field));
    return 0;
}
