#include <stdio.h>

int main() {
    float n1, n2, n3, n4;
    scanf("%f %f %f %f", &n1, &n2, &n3, &n4);
    float finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
    printf("Media: %.1f\n", finalGrade);
    if (finalGrade < 5.0)
        printf("Aluno reprovado.\n");
    else if (finalGrade > 7.0)
        printf("Aluno aprovado.\n");
    else {
        printf("Aluno em exame.\n");
        float retakeGrade;
        scanf("%f", &retakeGrade);
        printf("Nota do exame: %.1f\n", retakeGrade);
        finalGrade = (finalGrade + retakeGrade) / 2;
        printf(finalGrade < 5.0 ? "Aluno reprovado.\n" : "Aluno aprovado.\n");
        printf("Media final: %.1f\n", finalGrade);
    }
    return 0;
}
