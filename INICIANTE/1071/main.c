#include <stdio.h>

void startEnd(int x, int y, int *start, int *end) {
    if (x < y) {
        *start = x + 1;
        *end = y;
    } else {
        *start = y + 1;
        *end = x;
    }
}

int evensTotal(int start, int end) {
    int total = 0;
    for (int num = start; num < end; num++)
        if ((num % 2 + 2) % 2 == 1) total += num;
    return total;
}

int main() {
    int x, y, start, end;
    scanf("%d %d", &x, &y);
    startEnd(x, y, &start, &end);
    printf("%d\n", evensTotal(start, end));
    return 0;
}
