import java.util.Locale;
import java.util.Scanner;

public class Main {

    static void printResult(float n1, float n2, float n3, float n4, Scanner scanner) {
        float finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
        System.out.printf("Media: %.1f\n", finalGrade);
        if (finalGrade < 5.0) System.out.println("Aluno reprovado.");
        else if (finalGrade > 7.0) System.out.println("Aluno aprovado.");
        else {
            System.out.println("Aluno em exame.");
            _printRetakeResult(finalGrade, scanner);
        }
    }

    static void _printRetakeResult(float finalGrade, Scanner scanner) {
        float retakeGrade = scanner.nextFloat();
        System.out.printf("Nota do exame: %.1f\n", retakeGrade);
        finalGrade = (finalGrade + retakeGrade) / 2;
        System.out.println(finalGrade < 5.0 ? "Aluno reprovado." : "Aluno aprovado.");
        System.out.printf("Media final: %.1f\n", finalGrade);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        float n1 = scanner.nextFloat();
        float n2 = scanner.nextFloat();
        float n3 = scanner.nextFloat();
        float n4 = scanner.nextFloat();
        printResult(n1, n2, n3, n4, scanner);
        scanner.close();
    }
}
