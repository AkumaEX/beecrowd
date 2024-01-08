#include <stdio.h>

void printFormatted(int n) {
    printf("%d\n", n);
    int bills[7] = {100, 50, 20, 10, 5, 2, 1};
    for (int i = 0; i < 7; i++) {
        printf("%d nota(s) de R$ %d,00\n", n / bills[i], bills[i]);
        n = n % bills[i];
    }
}

int main() {
    int n;
    scanf("%d", &n);
    printFormatted(n);
    return 0;
}
