#include <stdio.h>

char *quadrant(float x, float y) {
    if (x == 0.0 || y == 0) {
        if (x == 0 && y == 0) return "Origem";
        return x == 0 ? "Eixo Y" : "Eixo X";
    }
    if (x > 0) return y > 0 ? "Q1" : "Q4";
    return y > 0 ? "Q2" : "Q3";
}

int main() {
    float x, y;
    scanf("%f %f", &x, &y);
    printf("%s\n", quadrant(x, y));
    return 0;
}
