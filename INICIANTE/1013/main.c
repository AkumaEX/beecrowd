#include <stdio.h>
#include <stdlib.h>

int maior(int a, int b) {
    return (a + b + abs(a - b)) / 2;
}

int main() {
    int a, b, c, greatest;
    scanf("%d %d %d", &a, &b, &c);
    greatest = maior(maior(a, b), c);
    printf("%d eh o maior\n", greatest);
    return 0;
}
