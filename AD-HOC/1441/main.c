#include <stdio.h>

int maxOf(int h) {
    int maxValue = h;
    while (h != 1) {
        h = h % 2 ? 3 * h + 1 : h / 2;
        if (h > maxValue) maxValue = h;
    }
    return maxValue;
}

int main() {
    int h;
    for (scanf("%d", &h); h != 0; scanf("%d", &h))
        printf("%d\n", maxOf(h));
    return 0;
}
