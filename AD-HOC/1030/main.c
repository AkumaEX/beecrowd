#include <stdio.h>

int survivor(int n, int k) {
    if (n == 1) return 1;
    return ((survivor(n - 1, k) + k - 1) % n) + 1;
}

int main() {
    int nc, n, k;
    scanf("%d", &nc);
    for (int i = 1; i <= nc; i++) {
        scanf("%d %d", &n, &k);
        printf("Case %d: %d\n", i, survivor(n, k));
    }
    return 0;
}
