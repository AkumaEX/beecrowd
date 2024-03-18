#include <stdio.h>

int scoredAllMatches(int m, int x[m]) {
    for (int i = 0; i < m; i++)
        if (x[i] == 0) return 0;
    return 1;
}

int main() {
    int n, m, players = 0;
    scanf("%d %d", &n, &m);
    int x[m];
    for (int player = 0; player < n; player++) {
        for (int i = 0; i < m; i++) scanf("%d", &x[i]);
        players += scoredAllMatches(m, x);
    }
    printf("%d\n", players);
    return 0;
}
