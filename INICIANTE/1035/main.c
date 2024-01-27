#include <stdbool.h>
#include <stdio.h>

bool isValid(int a, int b, int c, int d) {
    if (b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 == 0)
        return true;
    return false;
}

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    printf(isValid(a, b, c, d) ? "Valores aceitos\n" : "Valores nao aceitos\n");
    return 0;
}
