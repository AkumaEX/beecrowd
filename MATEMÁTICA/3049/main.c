#include <stdio.h>

int biggerSize(int b, int t) {
    int size = b + t;
    if (size > 160) return 1;
    if (size < 160) return 2;
    return 0;
}

int main() {
    int b, t;
    scanf("%d %d", &b, &t);
    printf("%d\n", biggerSize(b, t));
    return 0;
}
