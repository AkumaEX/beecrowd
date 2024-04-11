#include <stdio.h>

int elapsed(int start, int finish) {
    if (finish > start) return finish - start;
    return finish - start + 24;
}

int main() {
    int start, finish;
    scanf("%d %d", &start, &finish);
    printf("O JOGO DUROU %d HORA(S)\n", elapsed(start, finish));
    return 0;
}
