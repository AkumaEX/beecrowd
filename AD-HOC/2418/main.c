#include <stdio.h>

int cmpfunc(const void *a, const void *b) {
    double fa = *(const double *)a;
    double fb = *(const double *)b;
    return (fa > fb) - (fa < fb);
}

double score(double n[5]) {
    qsort(n, 5, sizeof(double), cmpfunc);
    return n[1] + n[2] + n[3];
}

int main() {
    double n[5];
    for (int i = 0; i < 5; i++) scanf("%lf", &n[i]);
    printf("%.1lf\n", score(n));
    return 0;
}
