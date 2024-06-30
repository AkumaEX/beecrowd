#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    for (int value = 1; value <= n; value++)
        if (value % 2 == 0)
            printf("%d^2 = %d\n", value, value * value);
    return 0;
}
