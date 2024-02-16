#include <stdbool.h>
#include <stdio.h>

bool fits(int x[5], int y[5]) {
    for (int i = 0; i < 5; i++)
        if (x[i] + y[i] != 1) return false;
    return true;
}

int main() {
    int x[5], y[5];
    scanf("%d %d %d %d %d", &x[0], &x[1], &x[2], &x[3], &x[4]);
    scanf("%d %d %d %d %d", &y[0], &y[1], &y[2], &y[3], &y[4]);
    printf(fits(x, y) ? "Y\n" : "N\n");
    return 0;
}
