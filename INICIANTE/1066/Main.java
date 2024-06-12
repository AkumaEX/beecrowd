import java.util.Scanner;

public class Main {

    static void formattedPrint(int evens, int positives, int negatives) {
        System.out.printf("%d valor(es) par(es)\n", evens);
        System.out.printf("%d valor(es) impar(es)\n", 5 - evens);
        System.out.printf("%d valor(es) positivo(s)\n", positives);
        System.out.printf("%d valor(es) negativo(s)\n", negatives);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int evens = 0;
        int positives = 0;
        int negatives = 0;
        for (int times = 0; times < 5; times++) {
            int number = scanner.nextInt();
            if (number % 2 == 0)
                evens++;
            if (number > 0)
                positives++;
            if (number < 0)
                negatives++;
        }
        formattedPrint(evens, positives, negatives);
        scanner.close();
    }
}
