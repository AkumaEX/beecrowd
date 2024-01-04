#include <stdbool.h>
#include <stdio.h>

bool isEnough(int c, int p, int f) {
    return c * f <= p;
}

int main() {
    int c, p, f;
    scanf("%d %d %d", &c, &p, &f);
    printf("%s\n", isEnough(c, p, f) ? "S" : "N");
    return 0;
}
