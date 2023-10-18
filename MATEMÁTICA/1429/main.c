#include <stdio.h>

int decimal(int acm) {
    int factorial[6] = {1, 1, 2, 6, 24, 120};
    int result = 0;
    for (int i = 1; acm > 0; acm /= 10, i++) {
        int digit = acm % 10;
        result += digit * factorial[i];
    }
    return result;
}

int main() {
    int acm;
    scanf("%d", &acm);
    while (acm) {
        printf("%d\n", decimal(acm));
        scanf("%d", &acm);
    }
    return 0;
}
