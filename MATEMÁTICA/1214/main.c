#include <stdio.h>

double percentageAboveMean() {
    int n;
    scanf("%d", &n);
    int grades[n];
    double mean = 0;
    for (int i = 0; i < n; i++) {
        scanf("%d", &grades[i]);
        mean += grades[i];
    }
    mean /= n;
    int aboveMean = 0;
    for (int i = 0; i < n; i++)
        if (grades[i] > mean)
            aboveMean++;
    return ((double)aboveMean / n) * 100;
}

int main() {
    int c;
    scanf("%d", &c);
    for (int times = 0; times < c; times++) {
        printf("%.3f%%\n", percentageAboveMean());
    }
    return 0;
}
