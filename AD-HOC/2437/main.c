#include <stdio.h>
#include <stdlib.h>

int main() {
    int xM, yM, xR, yR;
    scanf("%d %d %d %d", &xM, &yM, &xR, &yR);
    printf("%d\n", abs(xM - xR) + abs(yM - yR));
    return 0;
}
