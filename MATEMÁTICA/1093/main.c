#include <stdio.h>
#include <stdlib.h>

float prob(float ev1, float ev2, float at, float d) {
    float i = ceil(ev1 / d);
    float n = ceil(ev2 / d) + i;
    float r = (6 - at) / at;
    if (at == 3) return i / n;
    return (1 - pow(r, i)) / (1 - pow(r, n));
}

int main() {
    int ev1, ev2, at, d;
    scanf("%d %d %d %d", &ev1, &ev2, &at, &d);
    while (ev1 != 0 && ev2 != 0 && at != 0 && d != 0) {
        float p = prob(ev1, ev2, at, d) * 100;
        printf("%.1f\n", p);
        scanf("%d %d %d %d", &ev1, &ev2, &at, &d);
    }
    return 0;
}
