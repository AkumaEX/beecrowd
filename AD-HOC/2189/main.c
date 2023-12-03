#include <stdio.h>

int getWinner(int n) {
    int ticket, winner = 0;
    for (int participant = 1; participant <= n; participant++) {
        scanf("%d", &ticket);
        if (participant == ticket) winner = participant;
    }
    return winner;
}

void printFormatted(int test, int winner) {
    printf("Teste %d\n%d\n\n", test, winner);
}

int main() {
    int n;
    scanf("%d", &n);
    for (int test = 1; n > 0; test++) {
        int winner = getWinner(n);
        printFormatted(test, winner);
        scanf("%d", &n);
    }
    return 0;
}
