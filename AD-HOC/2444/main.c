#include <stdio.h>

int main() {
    int v, t, a;
    scanf("%d %d", &v, &t);
    while (t--) {
        scanf("%d", &a);
        v += a;
        if (v < 0)
            v = 0;
        else if (v > 100)
            v = 100;
    }
    printf("%d\n", v);
    return 0;
}
