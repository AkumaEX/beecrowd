#include <math.h>
#include <stdio.h>

int total(int l) {
    return pow(2, 2 * floor(log2(l)));
}

int main() {
    int l;
    scanf("%d", &l);
    printf("%d\n", total(l));
    return 0;
}
