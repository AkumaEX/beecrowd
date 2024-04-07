#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool fits(int r, int w, int l) {
    return pow(r, 2) >= pow((float) w / 2, 2) + pow((float) l / 2, 2);
}

int main() {
    int r, w, l;
    scanf("%d", &r);
    for (int pizza = 1; r > 0; pizza++) {
        scanf("%d %d", &w, &l);
        printf("Pizza %d %s\n", pizza, fits(r, w, l) ? "fits on the table." : "does not fit on the table.");
        scanf("%d", &r);
    }
    return 0;
}
