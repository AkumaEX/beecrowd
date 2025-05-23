
import java.util.Locale;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double a = scanner.nextDouble();
        double b = scanner.nextDouble();
        double c = scanner.nextDouble();
        boolean isTriangle = a + b > c && a + c > b && b + c > a;
        if (isTriangle) {
            System.out.printf("Perimetro = %.1f\n", a + b + c);
        } else {
            System.out.printf("Area = %.1f\n", (a + b) * c / 2);
        }
        scanner.close();
    }
}
