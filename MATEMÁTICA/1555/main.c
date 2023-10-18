#include <math.h>
#include <stdio.h>

char *winner(int x, int y) {
    double rafael = pow(3 * x, 2) + pow(y, 2);
    double beto = 2 * pow(x, 2) + pow(5 * y, 2);
    double carlos = -100 * x + pow(y, 3);

    if (rafael > beto && rafael > carlos)
        return "Rafael";
    else if (beto > rafael && beto > carlos)
        return "Beto";
    return "Carlos";
}

int main() {
    int n, x, y;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d %d", &x, &y);
        printf("%s ganhou\n", winner(x, y));
    }
    return 0;
}
