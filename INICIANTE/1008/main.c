#include <stdio.h>

int main() {
    int number, hours;
    double wage;
    scanf("%d%d%lf", &number, &hours, &wage);
    printf("NUMBER = %d\n", number);
    printf("SALARY = U$ %.2lf\n", hours * wage);
    return 0;
}
