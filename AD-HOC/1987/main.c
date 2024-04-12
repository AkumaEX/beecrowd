#include <stdio.h>

int digitSumOf(int n, long m) {
    int digitSum = 0;
    while(n--) {
        digitSum += m % 10;
        m /= 10;
    }
    return digitSum;
}

int main() {
    int n;
    long m;
    while(scanf("%d %ld", &n, &m) != EOF) {
        int digitSum = digitSumOf(n, m);
        printf("%d %s\n", digitSum, digitSum % 3 == 0 ? "sim" : "nao");
    }
    return 0;
}
