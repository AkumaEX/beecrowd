#include <stdio.h>

int main() {
    int n, diamonds, potential;
    char objects[1000];
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        int diamonds = 0;
        int potential = 0;
        scanf("%s", &objects);
        for (int i = 0; objects[i] != '\0'; i++) {
            if (objects[i] != '.') {
                if (objects[i] == '<') {
                    potential++;
                } else if (objects[i] == '>' && potential > 0) {
                    potential--;
                    diamonds++;
                }
            }
        }
        printf("%d\n", diamonds);
    }
    return 0;
}
