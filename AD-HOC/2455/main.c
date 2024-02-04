#include <stdio.h>

int balance(int p1, int c1, int p2, int c2) {
    int left = p1 * c1;
    int right = p2 * c2;
    if (left > right) return -1;
    if (right > left) return 1;
    return 0;
}

int main() {
    int p1, c1, p2, c2;
    scanf("%d %d %d %d", &p1, &c1, &p2, &c2);
    printf("%d\n", balance(p1, c1, p2, c2));
    return 0;
}
