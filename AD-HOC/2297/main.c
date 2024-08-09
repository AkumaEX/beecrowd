#include <stdio.h>

int main() {
    int r, a, b;
    scanf("%d", &r);
    for (int test = 1; r > 0; test++, scanf("%d", &r)) {
        printf("Teste %d\n", test);
        int totalA = 0, totalB = 0;
        while (r--) {
            scanf("%d %d", &a, &b);
            totalA += a;
            totalB += b;
        }
        printf("%s\n\n", totalA > totalB ? "Aldo" : "Beto");
    }
    return 0;
}
