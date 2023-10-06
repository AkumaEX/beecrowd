import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int times = 0; times < t; times++) {
            int n = scanner.nextInt();
            int m = scanner.nextInt();
            int total = (n / 3) * (m / 3);
            System.out.println(total);
        }
        scanner.close();
    }
}
