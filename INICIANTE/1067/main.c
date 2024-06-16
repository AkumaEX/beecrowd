#include <stdio.h>

int main() {
    int x;
    scanf("%d", &x);
    for (int number = 1; number <= x; number += 2)
        printf("%d\n", number);
    return 0;
}
