#include <math.h>
#include <stdio.h>

void printFormatted(double n) {
    n += 0.0001;
    double bill[6] = {100, 50, 20, 10, 5, 2};
    double coin[6] = {1, 0.50, 0.25, 0.10, 0.05, 0.01};
    printf("NOTAS:\n");
    for (int i = 0; i < 6; i++) {
        printf("%d nota(s) de R$ %.2lf\n", (int)(n / bill[i]), bill[i]);
        n = fmod(n, bill[i]);
    }
    printf("MOEDAS:\n");
    for (int i = 0; i < 6; i++) {
        printf("%d moeda(s) de R$ %.2lf\n", (int)(n / coin[i]), coin[i]);
        n = fmod(n, coin[i]);
    }
}

int main() {
    double n;
    scanf("%lf", &n);
    printFormatted(n);
    return 0;
}
