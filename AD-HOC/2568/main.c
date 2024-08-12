#include <stdio.h>

int predict(int d, int i, int x, int f) {
    if (d % 2 == 0) return i - (f % 2) * x;
    return i + (f % 2) * x;
}

int main() {
    int d, i, x, f;
    scanf("%d %d %d %d", &d, &i, &x, &f);
    printf("%d\n", predict(d, i, x, f));
    return 0;
}
