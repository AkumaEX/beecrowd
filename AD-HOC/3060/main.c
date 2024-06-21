#include <stdio.h>

void printValues(int v, int p) {
    int value = v / p;
    int adjustment = v % p;
    for (int i = 0; i < p; i++)
        printf("%d\n", i < adjustment ? value + 1 : value);
}

int main(int argc, char const *argv[]) {
    int v, p;
    scanf("%d %d", &v, &p);
    printValues(v, p);
    return 0;
}
