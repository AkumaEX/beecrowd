#include <stdio.h>
#include <stdlib.h>

int difference(int a, int b, int c, int d) {
    return abs(a - b - c + d);
}

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    printf("%d\n", difference(a, b, c, d));
    return 0;
}
