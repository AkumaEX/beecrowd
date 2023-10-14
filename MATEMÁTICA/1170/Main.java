import java.util.Scanner;

public class Main {

    static int elapsed(float c) {
        int days = 0;
        while (c > 1) {
            days++;
            c /= 2;
        }
        return days;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            float c = scanner.nextFloat();
            System.out.printf("%d dias\n", elapsed(c));
        }
        scanner.close();
    }
}
