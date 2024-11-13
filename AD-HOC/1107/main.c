#include <stdio.h>

int numLasers(int a, int c, int x[c]) {
    int lasers = a - x[0];
    for (int i = 1; i < c; i++)
        if (x[i - 1] > x[i]) lasers += x[i - 1] - x[i];
    return lasers;
}

int main() {
    int a, c;
    for (scanf("%d %d", &a, &c); a || c; scanf("%d %d", &a, &c)) {
        int x[c];
        for (int i = 0; i < c; i++) scanf("%d", &x[i]);
        printf("%d\n", numLasers(a, c, x));
    }
    return 0;
}
