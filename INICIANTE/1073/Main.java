import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int value = 1; value <= n; value++)
            if (value % 2 == 0)
                System.out.printf("%d^2 = %d\n", value, value * value);
        scanner.close();
    }
}
