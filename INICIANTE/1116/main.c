#include <stdio.h>

void formattedPrint(int x, int y) {
    if (y)
        printf("%.1lf\n", (double)x / y);
    else
        printf("divisao impossivel\n");
}

int main() {
    int n, x, y;
    scanf("%d", &n);
    while (n--) {
        scanf("%d %d", &x, &y);
        formattedPrint(x, y);
    }
    return 0;
}
