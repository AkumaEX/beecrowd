#include <ctype.h>
#include <stdio.h>

int main() {
    int n, digit1, digit2;
    char letter;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d%c%d", &digit1, &letter, &digit2);
        if (digit2 == digit1)
            printf("%d\n", digit2 * digit1);
        else if (isupper(letter))
            printf("%d\n", digit2 - digit1);
        else
            printf("%d\n", digit2 + digit1);
    }
    return 0;
}
