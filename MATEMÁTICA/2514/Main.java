import java.util.Scanner;

public class Main {

    static int gcd(int a, int b) {
        if (b == 0)
            return a;
        return gcd(b, a % b);
    }

    static int lcm(int a, int b) {
        return a * b / gcd(a, b);
    }

    static int nextAlignment(int m, int l1, int l2, int l3) {
        return lcm(lcm(l1, l2), l3) - m;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int m = scanner.nextInt();
            int l1 = scanner.nextInt();
            int l2 = scanner.nextInt();
            int l3 = scanner.nextInt();
            System.out.println(nextAlignment(m, l1, l2, l3));
        }
        scanner.close();
    }
}
