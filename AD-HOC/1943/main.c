#include <stdio.h>

int getCategory(int k) {
    int categories[7] = {1, 3, 5, 10, 25, 50, 100};
    for (int i = 0; i < 7; i++)
        if (k <= categories[i]) return categories[i];
}

int main() {
    int k;
    scanf("%d", &k);
    printf("Top %d\n", getCategory(k));
    return 0;
}
