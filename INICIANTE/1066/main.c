#include <stdio.h>

void formattedPrint(int evens, int positives, int negatives) {
    printf("%d valor(es) par(es)\n", evens);
    printf("%d valor(es) impar(es)\n", 5 - evens);
    printf("%d valor(es) positivo(s)\n", positives);
    printf("%d valor(es) negativo(s)\n", negatives);
}

int main() {
    int number, evens = 0, positives = 0, negatives = 0;
    for (int times = 0; times < 5; times++) {
        scanf("%d", &number);
        evens += number % 2 == 0;
        positives += number > 0;
        negatives += number < 0;
    }
    formattedPrint(evens, positives, negatives);
    return 0;
}
