#include <stdio.h>

int main() {
    int x;
    scanf("%d", &x);
    printf("%d\n", x + 2 - x % 2);
    return 0;
}
