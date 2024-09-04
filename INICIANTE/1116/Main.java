import java.util.Scanner;

public class Main {

    static void formattedPrint(int x, int y) {
        if (y != 0)
            System.out.printf("%.1f\n", (double) x / y);
        else
            System.out.println("divisao impossivel");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            formattedPrint(x, y);
        }
        scanner.close();
    }
}
