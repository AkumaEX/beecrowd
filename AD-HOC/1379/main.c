#include <stdio.h>

int main() {
    int a, b;
    scanf("%d %d", &a, &b);
    while (a || b) {
        int c = 2 * a - b;
        printf("%d\n", c);
        scanf("%d %d", &a, &b);
    }
    return 0;
}
