import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int times = 0; times < t; times++) {
            int n = scanner.nextInt();
            int s = (int) (Math.pow(2, n) - 1);
            System.out.println(s);
        }
        scanner.close();
    }
}
