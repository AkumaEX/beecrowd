import java.util.Scanner;

public class Main {

    static void printQuotient(int a, int b, int c, int d) {
        int numerator = a * d + b * c;
        int denominator = b * d;
        int gcd = _gcd(numerator, denominator);
        System.out.printf("%d %d\n", numerator / gcd, denominator / gcd);
    }

    static int _gcd(int x, int y) {
        return y == 0 ? x : _gcd(y, x % y);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        int d = scanner.nextInt();
        printQuotient(a, b, c, d);
        scanner.close();
    }
}
