#include <stdio.h>

int maxContainers(int a, int b, int c, int x, int y, int z) {
    return (x / a) * (y / b) * (z / c);
}

int main() {
    int a, b, c, x, y, z;
    scanf("%d %d %d %d %d %d", &a, &b, &c, &x, &y, &z);
    printf("%d\n", maxContainers(a, b, c, x, y, z));
    return 0;
}
