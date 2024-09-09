import java.util.Scanner;

public class Main {

    static boolean fits(int l, int a, int p, int r) {
        return Math.sqrt(Math.pow(l, 2) + Math.pow(a, 2) + Math.pow(p, 2)) <= r * 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int l = scanner.nextInt();
        int a = scanner.nextInt();
        int p = scanner.nextInt();
        int r = scanner.nextInt();
        System.out.println(fits(l, a, p, r) ? "S" : "N");
        scanner.close();
    }
}
