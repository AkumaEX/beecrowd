import java.util.Scanner;

public class Main {

    static boolean fits(int n, int a, int l, int p) {
        return n <= a && n <= l && n <= p;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int a = scanner.nextInt();
        int l = scanner.nextInt();
        int p = scanner.nextInt();
        System.out.println(fits(n, a, l, p) ? "S" : "N");
        scanner.close();
    }
}
