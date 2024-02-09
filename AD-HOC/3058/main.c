#include <stdio.h>
#include <stdlib.h>

int compare(float *a, float *b) {
    return *a - *b;
}

int main() {
    int n;
    float p, g;
    scanf("%d", &n);
    float prices[n];
    for (int store = 0; store < n; store++) {
        scanf("%f %f", &p, &g);
        prices[store] = 1000 * p / g;
    }
    qsort(prices, n, sizeof(float), compare);
    printf("%.2f\n", prices[0]);
    return 0;
}
