#include <stdio.h>

int getMinimum(int r, int n) {
    for (int minimum = 0; minimum < 27; minimum++) {
        if (r <= n * (1 + minimum)) return minimum;
    }
    return -1;
}

int main() {
    int r, n;
    scanf("%d %d", &r, &n);
    for (int c = 1; r > 0 && n > 0; c++) {
        printf("Case %d: ", c);
        int minimum = getMinimum(r, n);
        minimum >= 0 ? printf("%d\n", minimum) : printf("impossible\n");
        scanf("%d %d", &r, &n);
    }
    return 0;
}
