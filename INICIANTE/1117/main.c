#include <stdio.h>

double average() {
    double grade1, grade2;
    scanf("%lf", &grade1);
    while (grade1 < 0 || grade2 > 10) {
        printf("nota invalida\n");
        scanf("%lf", &grade1);
    }
    scanf("%lf", &grade2);
    while (grade2 < 0 || grade2 > 10) {
        printf("nota invalida\n");
        scanf("%lf", &grade2);
    }
    return (grade1 + grade2) / 2;
}

int main() {
    printf("media = %.2lf\n", average());
    return 0;
}
