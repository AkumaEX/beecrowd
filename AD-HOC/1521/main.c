#include <stdio.h>

int find(int *students, int k) {
    int student = students[k - 1];
    return (student == k) ? k : find(students, student);
}

int main() {
    int n, k;
    for (scanf("%d", &n); n > 0; scanf("%d", &n)) {
        int students[n];
        for (int student = 0; student < n; student++) scanf("%d", &students[student]);
        scanf("%d", &k);
        printf("%d\n", find(students, k));
    }
    return 0;
}
