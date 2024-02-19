import java.util.Scanner;

public class Main {

    static boolean isOverflow(int p, String c, int q, int n) {
        int result = c.equals("+") ? p + q : p * q;
        return result > n;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int p = scanner.nextInt();
        String c = scanner.next();
        int q = scanner.nextInt();
        System.out.println(isOverflow(p, c, q, n) ? "OVERFLOW" : "OK");
        scanner.close();
    }
}
