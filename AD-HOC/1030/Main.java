import java.util.Scanner;

public class Main {
    
    static int survivor(int n, int k) {
        if (n == 1)
            return 1;
        return ((survivor(n - 1, k) + k - 1) % n) + 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int nc = scanner.nextInt();
        for (int i = 1; i <= nc; i++) {
            int n = scanner.nextInt();
            int k = scanner.nextInt();
            System.out.printf("Case %d: %d\n", i, survivor(n, k));
        }
        scanner.close();

    }
}