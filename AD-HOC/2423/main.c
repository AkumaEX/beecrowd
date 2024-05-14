#include <stdio.h>

int min(int a, int b) {
    return a < b ? a : b;
}

int maxCakes(int a, int b, int c) {
    return min(min(a / 2, b / 3), c / 5);
}

int main() {
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    printf("%d\n", maxCakes(a, b, c));
    return 0;
}
