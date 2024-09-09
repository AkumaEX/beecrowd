import java.util.Locale;
import java.util.Scanner;

public class Main {

    static double average() {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double grade1 = scanner.nextDouble();
        while (grade1 < 0 || grade1 > 10) {
            System.out.println("nota invalida");
            grade1 = scanner.nextDouble();
        }
        double grade2 = scanner.nextDouble();
        while (grade2 < 0 || grade2 > 10) {
            System.out.println("nota invalida");
            grade2 = scanner.nextDouble();
        }
        scanner.close();
        return (grade1 + grade2) / 2;
    }

    public static void main(String[] args) {
        System.out.printf("media = %.2f\n", average());
    }
}
