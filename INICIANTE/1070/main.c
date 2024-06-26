#include <stdio.h>

int main() {
    int x;
    scanf("%d", &x);
    x = x + 1 - x % 2;
    for (int odd = x; odd < x + 11; odd += 2)
        printf("%d\n", odd);
    return 0;
}
