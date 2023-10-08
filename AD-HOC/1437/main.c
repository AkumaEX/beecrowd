#include <stdio.h>

int main() {
    char directions[4] = {'N', 'L', 'S', 'O'};
    int n;
    scanf("%d", &n);
    while (n) {
        int direction = 0;
        char commands[n];
        scanf("%s", &commands);
        for (int i = 0; i < n; i++)
            commands[i] == 'D' ? direction++ : direction--;
        int last = (direction % 4 + 4) % 4;
        printf("%c\n", directions[last]);
        scanf("%d", &n);
    }
    return 0;
}
