#include <stdio.h>

int totalPairs(int n, int i, int f, int *vector) {
    int total = 0;
    for (int p = 0; p < n - 1; p++) {
        for (int q = p + 1; q < n; q++) {
            int pair = vector[p] + vector[q];
            if (i <= pair && pair <= f) total++;
        }
    }
    return total;
}

int main() {
    int n, i, f;
    scanf("%d %d %d", &n, &i, &f);
    int vector[n];
    for (int p = 0; p < n; p++) scanf("%d", &vector[p]);
    printf("%d\n", totalPairs(n, i, f, &vector));
    return 0;
}
