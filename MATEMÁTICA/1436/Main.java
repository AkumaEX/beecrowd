import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int i = 0; i < t; i++) {
            int n = scanner.nextInt();
            int[] ages = new int[n];
            for (int j = 0; j < n; j++)
                ages[j] = scanner.nextInt();
            System.out.printf("Case %d: %d\n", i + 1, ages[n / 2]);
        }
        scanner.close();
    }
}
