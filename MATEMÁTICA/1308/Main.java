import java.util.Scanner;

public class Main {

    static long nLines(long n) {
        return (long) (-1 + Math.sqrt(1 + 8 * n)) / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        long t = scanner.nextLong();
        while (t-- > 0) {
            long n = scanner.nextLong();
            System.out.println(nLines(n));
        }
        scanner.close();
    }
}
