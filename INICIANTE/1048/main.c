#include <stdio.h>

double readjustmentRate(double salary) {
    if (salary > 2000) return 0.04;
    if (salary > 1200) return 0.07;
    if (salary > 800) return 0.10;
    if (salary > 400) return 0.12;
    return 0.15;
}

void formattedPrint(double newSalary, double moneyEarned, double percentage) {
    printf("Novo salario: %.2lf\n", newSalary);
    printf("Reajuste ganho: %.2lf\n", moneyEarned);
    printf("Em percentual: %.0lf %%\n", percentage * 100);
}

int main() {
    double salary;
    scanf("%lf", &salary);
    double percentage = readjustmentRate(salary);
    double moneyEarned = salary * percentage;
    double newSalary = salary + moneyEarned;
    formattedPrint(newSalary, moneyEarned, percentage);
    return 0;
}
