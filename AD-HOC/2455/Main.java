import java.util.Scanner;

public class Main {

    static int balance(int p1, int c1, int p2, int c2) {
        int left = p1 * c1;
        int right = p2 * c2;
        if (left > right) return -1;
        if (right > left) return 1;
        return 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int p1 = scanner.nextInt();
        int c1 = scanner.nextInt();
        int p2 = scanner.nextInt();
        int c2 = scanner.nextInt();
        System.out.println(balance(p1, c1, p2, c2));
        scanner.close();
    }
}
