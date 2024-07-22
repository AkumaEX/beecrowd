#include <stdio.h>

int main() {
    long long int hashmat, opponent;
    while (scanf("%lld %lld", &hashmat, &opponent) != EOF)
        printf("%lld\n", hashmat > opponent ? hashmat - opponent : opponent - hashmat);
    return 0;
}
