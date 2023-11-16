#include <math.h>
#include <stdio.h>

int ballons(int radius, int liters) {
    double pi = 3.1415;
    double volume = (4.0 / 3) * pi * pow(radius, 3);
    return (int)(liters / volume);
}

int main() {
    int r, l;
    scanf("%d %d", &r, &l);
    printf("%d\n", ballons(r, l));
    return 0;
}
