#include <stdio.h>

void printInterval(double value) {
    if (value < 0 || value > 100)
        printf("Fora de intervalo\n");
    else if (value > 75)
        printf("Intervalo (75,100]\n");
    else if (value > 50)
        printf("Intervalo (50,75]\n");
    else if (value > 25)
        printf("Intervalo (25,50]\n");
    else
        printf("Intervalo [0,25]\n");
}

int main() {
    double value;
    scanf("%lf", &value);
    printInterval(value);
    return 0;
}
