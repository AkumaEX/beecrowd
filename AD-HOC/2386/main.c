#include <stdio.h>

int main() {
    int a, n, f, quantity = 0;
    scanf("%d %d", &a, &n);
    while (n--) {
        scanf("%d", &f);
        quantity += a * f >= 40000000;
    }
    printf("%d\n", quantity);
    return 0;
}
