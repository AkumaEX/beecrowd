#include <stdbool.h>
#include <stdio.h>

bool ballIn(int x, int y) {
    return x >= 0 && x <= 432 && y >= 0 && y <= 468;
}

int main() {
    int x, y;
    scanf("%d %d", &x, &y);
    printf(ballIn(x, y) ? "dentro\n" : "fora\n");
    return 0;
}
