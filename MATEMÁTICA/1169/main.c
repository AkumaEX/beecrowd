#include <stdio.h>

unsigned long long get_weight(x) {
    unsigned long long grains = 1;
    for (int i = 0; i < x - 1; i++)
        grains *= 2;
    return grains / 6000;
}

int main() {
    int n, x;
    unsigned long long grains, weight;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &x);
        weight = get_weight(x);
        printf("%llu kg\n", weight);
    }
    return 0;
}
