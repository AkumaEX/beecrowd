import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;

public class Main {

    static void formattedPrint(double a, double b, double c) {
        if (a >= b + c) {
            System.out.println("NAO FORMA TRIANGULO");
        } else {
            if (Math.pow(a, 2) > Math.pow(b, 2) + Math.pow(c, 2)) {
                System.out.println("TRIANGULO OBTUSANGULO");
            } else if (Math.pow(a, 2) < Math.pow(b, 2) + Math.pow(c, 2)) {
                System.out.println("TRIANGULO ACUTANGULO");
            } else {
                System.out.println("TRIANGULO RETANGULO");
            }
            if (a == b && b == c && c == a) {
                System.out.println("TRIANGULO EQUILATERO");
            } else if (a == b || b == c || c == a) {
                System.out.println("TRIANGULO ISOSCELES");
            }
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        Double[] sides = new Double[3];
        sides[0] = scanner.nextDouble();
        sides[1] = scanner.nextDouble();
        sides[2] = scanner.nextDouble();
        Arrays.sort(sides, (b, a) -> Double.compare(a, b));
        formattedPrint(sides[0], sides[1], sides[2]);
        scanner.close();
    }
}
