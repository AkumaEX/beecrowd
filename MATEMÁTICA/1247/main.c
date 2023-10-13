#include <stdbool.h>
#include <stdio.h>

bool canCatch(int d, int vf, int vg) {
    double sg = vg * 12 / vf;
    return sg * sg >= d * d + 12 * 12;
}

int main() {
    int d, vf, vg;
    while (scanf("%d %d %d", &d, &vf, &vg) != EOF)
        printf(canCatch(d, vf, vg) ? "S\n" : "N\n");
    return 0;
}
