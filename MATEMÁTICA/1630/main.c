#include <stdio.h>

int gcd(int x, int y) {
    return (y == 0) ? x : gcd(y, x % y);
}

int main() {
    int x, y;
    while (scanf("%d %d", &x, &y) != EOF) {
        printf("%d\n", 2 * (x + y) / gcd(x, y));
    }
    return 0;
}
