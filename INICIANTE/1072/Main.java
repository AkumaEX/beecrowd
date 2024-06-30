import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int inInterval = 0;
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int x = scanner.nextInt();
            if (0 <= x && x <= 20)
                inInterval++;
        }
        System.out.printf("%d in\n", inInterval);
        System.out.printf("%d out\n", n - inInterval);
        scanner.close();
    }
}
