import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            int area = x * y / 2;
            System.out.printf("%d cm2\n", area);
        }
        scanner.close();
    }
}
