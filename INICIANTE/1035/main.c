#include <stdbool.h>
#include <stdio.h>

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    bool accepted = b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 == 0;
    printf(accepted ? "Valores aceitos\n" : "Valores nao aceitos\n");
    return 0;
}
