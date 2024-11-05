#include <stdio.h>

int main() {
    int x, y;
    scanf("%d %d", &x, &y);
    if (x > y) {
        int aux = x;
        x = y;
        y = aux;
    }
    for (int n = x + 1; n < y; n++)
        if (n % 5 == 2 || n % 5 == 3)
            printf("%d\n", n);
    return 0;
}
