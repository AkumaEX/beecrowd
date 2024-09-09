#include <math.h>
#include <stdbool.h>
#include <stdio.h>

bool fits(int l, int a, int p, int r) {
    return sqrt(pow(l, 2) + pow(a, 2) + pow(p, 2)) <= r * 2;
}

int main() {
    int l, a, p, r;
    scanf("%d %d %d %d", &l, &a, &p, &r);
    printf("%s\n", fits(l, a, p, r) ? "S" : "N");
    return 0;
}
