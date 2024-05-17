#include <stdio.h>

double elapsed(int s, int va, int vb) {
    return (double)s / (va - vb);
}

void formattedPrint(double time) {
    printf(time < 0 ? "impossivel\n" : "%.2lf\n", time);
}

int main() {
    int s, va, vb;
    while (scanf("%d %d %d", &s, &va, &vb) != EOF)
        formattedPrint(elapsed(s, va, vb));
    return 0;
}
