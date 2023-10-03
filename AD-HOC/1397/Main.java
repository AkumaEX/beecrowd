import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n != 0) {
            int scoreA = 0;
            int scoreB = 0;
            for (int times = 0; times < n; times++) {
                int a = scanner.nextInt();
                int b = scanner.nextInt();
                if (a > b) scoreA++;
                else if (b > a) scoreB++;
            }
            System.out.printf("%d %d\n", scoreA, scoreB);
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
