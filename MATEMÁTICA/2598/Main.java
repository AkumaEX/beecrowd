import java.util.Scanner;

public class Main {

    static int numRadars(int n, int m) {
        return Math.ceilDiv(n, m);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            int n = scanner.nextInt();
            int m = scanner.nextInt();
            System.out.println(numRadars(n, m));
        }
        scanner.close();
    }
}
