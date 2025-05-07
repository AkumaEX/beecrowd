import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double a = scanner.nextDouble();
        double b = scanner.nextDouble();
        double c = scanner.nextDouble();
        System.out.printf("TRIANGULO: %.3f\n", a * c / 2);
        System.out.printf("CIRCULO: %.3f\n", 3.14159 * c * c);
        System.out.printf("TRAPEZIO: %.3f\n", (a + b) * c / 2);
        System.out.printf("QUADRADO: %.3f\n", b * b);
        System.out.printf("RETANGULO: %.3f\n", a * b);
        scanner.close();
    }
}