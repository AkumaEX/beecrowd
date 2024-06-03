#include <stdio.h>

void formattedPrint(int positives, double values) {
    printf("%d valores positivos\n", positives);
    printf("%.1lf\n", values / positives);
}

int main() {
    int positives = 0;
    double value, values = 0;
    for (int times = 0; times < 6; times++) {
        scanf("%lf", &value);
        if (value > 0) {
            positives++;
            values += value;
        }
    }
    formattedPrint(positives, values);
    return 0;
}
