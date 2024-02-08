#include <stdio.h>

int totalCost(int l, int d, int k, int p) {
    int distance = l * k;
    int tolls = (l / d) * p;
    return distance + tolls;
}

int main() {
    int l, d, k, p;
    scanf("%d %d %d %d", &l, &d, &k, &p);
    printf("%d\n", totalCost(l, d, k, p));
    return 0;
}
