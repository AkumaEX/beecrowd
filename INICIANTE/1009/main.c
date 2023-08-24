#include <stdio.h>
#define MAX_NAME_SZ 256

int main() {
    double salary, sales, total;
    char *name = malloc(MAX_NAME_SZ);
    fgets(name, MAX_NAME_SZ, stdin);
    scanf("%lf%lf", &salary, &sales);
    total = salary + sales * 0.15;
    printf("TOTAL = R$ %.2lf\n", total);
    free(name);
    return 0;
}
