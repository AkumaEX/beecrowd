import java.util.Scanner;

public class Main {
    static boolean isIn(int x, int y) {
        return x >= 0 && x <= 432 && y >= 0 && y <= 468;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        System.out.println(isIn(x, y) ? "dentro" : "fora");
        scanner.close();
    }
}
