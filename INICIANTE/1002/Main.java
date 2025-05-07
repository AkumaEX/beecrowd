import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);
        double raio = scanner.nextDouble();
        double area = raio * raio * 3.14159;
        System.out.printf("A=%.4f\n", area);
        scanner.close();
    }
}
