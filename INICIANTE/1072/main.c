#include <stdio.h>

int main() {
    int n, x, inInterval = 0;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d", &x);
        if (0 <= x && x <= 20) inInterval++;
    }
    printf("%d in\n", inInterval);
    printf("%d out\n", n - inInterval);
    return 0;
}
