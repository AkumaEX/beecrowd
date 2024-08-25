#include <stdio.h>

int main() {
    int x, y;
    scanf("%d %d", &x, &y);
    while (x != y) {
        printf("%s\n", x > y ? "Decrescente" : "Crescente");
        scanf("%d %d", &x, &y);
    }
    return 0;
}
