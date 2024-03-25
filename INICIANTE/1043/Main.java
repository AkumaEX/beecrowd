import java.util.Locale;
import java.util.Scanner;

public class Main {

    static boolean isTriangle(double a, double b, double c) {
        return a != b + c && b != a + c && c != a + b;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double a = scanner.nextDouble();
        double b = scanner.nextDouble();
        double c = scanner.nextDouble();
        if (isTriangle(a, b, c))
            System.out.printf("Perimetro = %.1f\n", a + b + c);
        else
            System.out.printf("Area = %.1f\n", (a + b) * c / 2);
        scanner.close();
    }
}
