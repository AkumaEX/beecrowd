import java.util.Scanner;

public class Main {

    static Long gcd(Long a, Long b) {
        if (b == 0)
            return a;
        return gcd(b, a % b);
    }

    static Long total(Long n, Long a, Long b) {
        return n / a + n / b - n * gcd(a, b) / (a * b);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Long n;
        while ((n = scanner.nextLong()) > 0) {
            Long a = scanner.nextLong();
            Long b = scanner.nextLong();
            System.out.println(total(n, a, b));
        }
        scanner.close();
    }
}
