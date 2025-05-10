#include <stdio.h>

int main() {
    double prices[] = {0.0, 4.0, 4.5, 5.0, 2.0, 1.5};
    int code, quantity;
    scanf("%d %d", &code, &quantity);
    printf("Total: R$ %.2lf\n", prices[code] * quantity);
    return 0;
}
