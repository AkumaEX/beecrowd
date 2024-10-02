#include <stdio.h>

double internalRate(double x, double y) {
    return 100 * (y - x) / x;
}

void formattedPrint(int project, double rate) {
    printf("Projeto %d:\n", project + 1);
    printf("Percentual dos juros da aplicacao: %.2f %%\n\n", rate);
}

int main() {
    double x, y;
    int project = 0;
    while (scanf("%lf %lf", &x, &y) != EOF) {
        double rate = internalRate(x, y);
        formattedPrint(project++, rate);
    }
    return 0;
}
