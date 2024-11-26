#include <stdio.h>
#include <math.h>

int main() {
    long double n;
    scanf("%LF", &n);
    while (n > 0) {
        printf("Brasil %.LF x Alemanha %.LF\n", floorl(n / 90), ceill(7 * n / 90));
        scanf("%LF", &n);
    }
    return 0;
}
