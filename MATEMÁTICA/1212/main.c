#include <stdio.h>

int totalCarries(int a, int b) {
    int carry = 0, carries = 0;
    while (a || b) {
        carry = (carry + a % 10 + b % 10) / 10;
        carries += carry;
        a /= 10;
        b /= 10;
    }
    return carries;
}

void formattedPrint(int carries) {
    if (carries)
        printf("%d carry operation%s.\n", carries, carries > 1 ? "s" : "");
    else
        printf("No carry operation.\n");
}

int main() {
    int a, b;
    scanf("%d %d", &a, &b);
    while (a || b) {
        int carries = totalCarries(a, b);
        formattedPrint(carries);
        scanf("%d %d", &a, &b);
    }
    return 0;
}
