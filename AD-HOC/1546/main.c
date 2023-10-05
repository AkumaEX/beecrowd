#include <stdio.h>

int main() {
    char *members[] = {"", "Rolien", "Naej", "Elehcim", "Odranoel"};
    int n, k, feedback;
    scanf("%d", &n);
    for (int days = 0; days < n; days++) {
        scanf("%d", &k);
        for (int feedbacks = 0; feedbacks < k; feedbacks++) {
            scanf("%d", &feedback);
            printf("%s\n", members[feedback]);
        }
    }
    return 0;
}
