#include <stdio.h>

double total(int code, int qty) {
    double prices[] = {4.0, 4.5, 5.0, 2.0, 1.5};
    return prices[code - 1] * qty;
}

int main() {
    int code, qty;
    scanf("%d %d", &code, &qty);
    printf("Total: R$ %.2lf\n", total(code, qty));
    return 0;
}
