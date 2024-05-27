#include <stdio.h>

int main() {
    int na, nb;
    double da, va, db, vb;
    scanf("%d %lf %lf %d %lf %lf", &na, &da, &va, &nb, &db, &vb);
    printf("%d\n", (da / va) < (db / vb) ? na : nb);
    return 0;
}
