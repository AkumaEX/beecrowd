#include <stdio.h>

char *sequence(int cards[5]) {
    if (cards[0] < cards[1] && cards[1] < cards[2] && cards[2] < cards[3] && cards[3] < cards[4]) return "C";
    if (cards[0] > cards[1] && cards[1] > cards[2] && cards[2] > cards[3] && cards[3] > cards[4]) return "D";
    return "N";
}

int main() {
    int cards[5];
    for (int i = 0; i < 5; i++) scanf("%d", &cards[i]);
    printf("%s\n", sequence(cards));
    return 0;
}
