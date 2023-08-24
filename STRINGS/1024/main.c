#include <stdio.h>

static void first_pass(char *text) {
    size_t N = strlen(text);
    for (int i = 0; i < N; i++)
        if (isalpha(text[i])) text[i] += 3;
}

static void second_pass(char *text) {
    size_t N = strlen(text);
    for (int i = 0, j = N - 1; i < (N / 2); i++, j--) {
        char temp = text[j];
        text[j] = text[i];
        text[i] = temp;
    }
}

static void third_pass(char *text) {
    size_t N = strlen(text);
    for (int i = (N / 2); i < N; i++)
        text[i]--;
}

void encrypt(char *text) {
    first_pass(text);
    second_pass(text);
    third_pass(text);
}

int main() {
    int N;
    char text[1000];
    scanf("%d", &N);
    for (int i = 0; i < N; i++) {
        scanf(" %[^\n]", &text);
        encrypt(&text);
        printf("%s\n", text);
    }
    return 0;
}
