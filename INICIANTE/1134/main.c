#include <stdbool.h>
#include <stdio.h>

int main() {
    int gasoline = 0;
    int ethanol = 0;
    int diesel = 0;
    int fuel;

    while (true) {
        scanf("%d", &fuel);
        if (fuel == 1)
            ethanol++;
        else if (fuel == 2)
            gasoline++;
        else if (fuel == 3)
            diesel++;
        else if (fuel == 4)
            break;
    }

    printf("MUITO OBRIGADO\n");
    printf("Alcool: %d\n", ethanol);
    printf("Gasolina: %d\n", gasoline);
    printf("Diesel: %d\n", diesel);
    return 0;
}
