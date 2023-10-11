#include <math.h>
#include <stdbool.h>
#include <stdio.h>

bool fits(int b, int a) {
    int numDigitsB = floor(log10(b) + 1);
    int lastDigitsA = a % (int)pow(10, numDigitsB);
    return lastDigitsA == b;
}

int main() {
    int n, a, b;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d %d", &a, &b);
        if (fits(b, a))
            printf("encaixa\n");
        else
            printf("nao encaixa\n");
    }
    return 0;
}
