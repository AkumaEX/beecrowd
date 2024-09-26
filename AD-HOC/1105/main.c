#include <stdbool.h>
#include <stdio.h>

bool isPossible(int b, int n) {
    int banks[b], d, c, v;
    for (int i = 0; i < b; i++) scanf("%d", &banks[i]);
    while (n--) {
        scanf("%d %d %d", &d, &c, &v);
        banks[d - 1] -= v;
        banks[c - 1] += v;
    }
    for (int i = 0; i < b; i++) {
        if (banks[i] < 0) return false;
    }
    return true;
}

int main() {
    int b, n;
    scanf("%d %d", &b, &n);
    while (b || n) {
        printf("%s\n", isPossible(b, n) ? "S" : "N");
        scanf("%d %d", &b, &n);
    }
    return 0;
}
