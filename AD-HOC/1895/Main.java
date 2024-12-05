import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = 0, b = 0;
        int n = scanner.nextInt();
        int t = scanner.nextInt();
        int l = scanner.nextInt();
        for (int i = 0; i < n / 2; i++) {
            int s = scanner.nextInt();
            if (Math.abs(t - s) <= l) {
                a += Math.abs(t - s);
                t = s;
            }
            s = scanner.nextInt();
            if (Math.abs(t - s) <= l) {
                b += Math.abs(t - s);
                t = s;
            }
        }
        System.out.printf("%d %d\n", a, b);
        scanner.close();
    }
}
