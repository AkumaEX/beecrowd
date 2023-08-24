#include <stdio.h>

int main() {
    int code, quantity;
    float value, total = 0;
    while (scanf("%d %d %f", &code, &quantity, &value) != EOF)
        total += quantity * value;
    printf("VALOR A PAGAR: R$ %.2f\n", total);
    return 0;
}