#include <stdio.h>

int main() {
    const double bill[6] = {100, 50, 20, 10, 5, 2};
    const double coin[6] = {1, 0.50, 0.25, 0.10, 0.05, 0.01};
    double n;
    scanf("%lf", &n);
    n += 0.0001;
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
    return 0;
}
