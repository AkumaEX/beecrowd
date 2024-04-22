import java.util.Scanner;

public class Main {

    static boolean exceeded(int n, int c, Scanner scanner) {
        int weight = 0;
        while (n-- > 0) {
            int s = scanner.nextInt();
            int e = scanner.nextInt();
            weight += e - s;
            if (weight > c)
                return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int c = scanner.nextInt();
        System.out.println(exceeded(n, c, scanner) ? "S" : "N");
        scanner.close();
    }
}
