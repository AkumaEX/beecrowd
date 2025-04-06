import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);
        double raio = scanner.nextDouble();
        scanner.close();

        double pi = 3.14159;
        double area = pi * raio * raio;
        System.out.printf("A=%.4f\n", area);
    }
}