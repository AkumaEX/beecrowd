#include <stdio.h>

int main() {
    char name[256];
    double salary, sales;
    scanf("%s %lf %lf", &name, &salary, &sales);
    printf("TOTAL = R$ %.2lf\n", salary + sales * 0.15);
    return 0;
}
