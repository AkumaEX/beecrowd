#include <stdio.h>

int seconds(int startD, int startH, int startM, int startS, int endD, int endH, int endM, int endS) {
    return 86400 * (endD - startD) + 3600 * (endH - startH) + 60 * (endM - startM) + (endS - startS);
}

void formattedPrint(int elapsed) {
    printf("%d dia(s)\n", elapsed / 86400);
    elapsed %= 86400;
    printf("%d hora(s)\n", elapsed / 3600);
    elapsed %= 3600;
    printf("%d minuto(s)\n", elapsed / 60);
    printf("%d segundo(s)\n", elapsed % 60);
}

int main() {
    int startD, startH, startM, startS, endD, endH, endM, endS;
    scanf("Dia %d %d : %d : %d Dia %d %d : %d : %d", &startD, &startH, &startM, &startS, &endD, &endH, &endM, &endS);
    int elapsed = seconds(startD, startH, startM, startS, endD, endH, endM, endS);
    formattedPrint(elapsed);
    return 0;
}
