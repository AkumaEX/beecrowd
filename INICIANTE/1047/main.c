#include <stdio.h>

void elapsed(int startH, int startM, int endH, int endM, int *elapsedH, int *elapsedM) {
    int startMinutes = 60 * startH + startM;
    int endMinutes = 60 * endH + endM;
    *elapsedM = endMinutes - startMinutes;
    if (*elapsedM < 1) *elapsedM += 1440;
    *elapsedH = *elapsedM / 60;
    *elapsedM = *elapsedM % 60;
}

int main() {
    int startH, startM, endH, endM, *elapsedH, *elapsedM;
    scanf("%d %d %d %d", &startH, &startM, &endH, &endM);
    elapsed(startH, startM, endH, endM, &elapsedH, &elapsedM);
    printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", elapsedH, elapsedM);
    return 0;
}
