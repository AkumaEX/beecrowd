import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int distance = 0;
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int t = scanner.nextInt();
            int v = scanner.nextInt();
            distance += t * v;
        }
        System.out.println(distance);
        scanner.close();
    }
}
