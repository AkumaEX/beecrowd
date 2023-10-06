#include <stdio.h>

int main() {
    int t, n, m;
    scanf("%d", &t);
    for (int times = 0; times < t; times++) {
        scanf("%d %d", &n, &m);
        int total = (n / 3) * (m / 3);
        printf("%d\n", total);
    }
    return 0;
}
