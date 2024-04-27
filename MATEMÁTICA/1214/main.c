#include <stdio.h>

void getGrades(int n, int *grades) {
    for (int i = 0; i < n; i++)
        scanf("%d", &grades[i]);
}

double getAverage(int n, int *grades) {
    double sum = 0;
    for (int i = 0; i < n; i++)
        sum += grades[i];
    return sum / n;
}

double percentageAboveAverage(int n, int *grades, double average) {
    double aboveAverage = 0;
    for (int i = 0; i < n; i++)
        if (grades[i] > average)
            aboveAverage++;
    return 100 * aboveAverage / n;
}

int main() {
    int c, n;
    scanf("%d", &c);
    while (c--) {
        scanf("%d", &n);
        int *grades[n];
        getGrades(n, grades);
        double average = getAverage(n, grades);
        printf("%.3f%%\n", percentageAboveAverage(n, grades, average));
    }
    return 0;
}
