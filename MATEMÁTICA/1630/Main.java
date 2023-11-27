import java.util.Scanner;

public class Main {

    static int gcd(int x, int y) {
        return (y == 0) ? x : gcd(y, x % y);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            System.out.println(2 * (x + y) / gcd(x, y));
        }
        scanner.close();
    }
}