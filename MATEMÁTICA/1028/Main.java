import java.util.Scanner;

public class Main {

    public static int gcd(int a, int b) {
        return b == 0 ? a : gcd(b, a % b);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        for (int i = 0; i < n; i++) {
            String[] numbers = scanner.nextLine().split(" ");
            int f1 = Integer.parseInt(numbers[0]);
            int f2 = Integer.parseInt(numbers[1]);
            System.out.println(gcd(f1, f2));
        }
        scanner.close();
    }
}