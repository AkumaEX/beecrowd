#include <stdio.h>

int main() {
    char name[256];
    double salary, sales, total;
    scanf("%s%lf%lf", &name, &salary, &sales);
    total = salary + sales * 0.15;
    printf("TOTAL = R$ %.2lf\n", total);
    return 0;
}
