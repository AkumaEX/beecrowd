#include <stdio.h>

int numRadars(int n, int m) {
    return ceil((double)n / m);
}

int main() {
    int c, n, m;
    scanf("%d", &c);
    while (c--) {
        scanf("%d %d", &n, &m);
        printf("%d\n", numRadars(n, m));
    }
    return 0;
}
