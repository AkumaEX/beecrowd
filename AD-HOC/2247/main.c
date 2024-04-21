#include<stdio.h>

int main() {
    for (int n, j, z, test = 1, difference = 0; scanf("%d", &n), n > 0; test++, difference = 0, printf("\n")) {
        printf("Teste %d\n", test);
        while (n--) {
            scanf("%d %d", &j, &z);
            difference += j - z;
            printf("%d\n", difference);
        }
    }
    return 0;
}
