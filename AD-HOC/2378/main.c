#include <stdio.h>
#include <stdbool.h>

bool exceeded(int n, int c) {
    int e, s, weight = 0;
    while (n--) {
        scanf("%d %d", &s, &e);
        weight += e - s;
        if (weight > c) return true;
    }
    return false;
}


int main() {
    int n, c;
    scanf("%d %d", &n, &c);
    printf(exceeded(n, c) ? "S\n" : "N\n");
    return 0;
}
