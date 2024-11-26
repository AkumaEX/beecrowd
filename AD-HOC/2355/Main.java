import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        long n;
        while ((n = scanner.nextLong()) > 0)
            System.out.printf("Brasil %d x Alemanha %d\n", Math.floorDiv(n, 90), Math.ceilDiv(7 * n, 90));
        scanner.close();
    }
}
