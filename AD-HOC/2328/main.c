#include <stdio.h>

int getPieces(int n) {
    int piece, pieces = 0;
    for (int i = 0; i < n; i++) {
        scanf("%d", &piece);
        pieces += piece - 1;
    }
    return pieces;
}

int main() {
    int n, pieces;
    scanf("%d", &n);
    pieces = getPieces(n);
    printf("%d\n", pieces);
    return 0;
}
