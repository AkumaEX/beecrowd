#include <stdio.h>

int main() {
    int number;
    int hours;
    double wage, salary;
    scanf("%d%d%lf", &number, &hours, &wage);
    salary = hours * wage;
    printf("NUMBER = %d\n", number);
    printf("SALARY = U$ %.2lf\n", salary);
    return 0;
}
