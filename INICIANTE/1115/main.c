#include <stdio.h>

void formattedPrint(x, y) {
    if (x > 0) {
        printf("%s\n", y > 0 ? "primeiro" : "quarto");
    } else {
        printf("%s\n", y > 0 ? "segundo" : "terceiro");
    }
}

int main() {
    int x, y;
    scanf("%d %d", &x, &y);
    while (x && y) {
        formattedPrint(x, y);
        scanf("%d %d", &x, &y);
    }
    return 0;
}
