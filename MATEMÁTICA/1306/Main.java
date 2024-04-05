import java.util.Scanner;

public class Main {

    static int getMinimum(int r, int n) {
        for (int minimum = 0; minimum < 27; minimum++)
            if (r <= n * (1 + minimum))
                return minimum;
        return -1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int r = scanner.nextInt();
        int n = scanner.nextInt();
        for (int c = 1; r > 0 && n > 0; c++) {
            int minimum = getMinimum(r, n);
            System.out.println("Case " + c + ": " + (minimum >= 0 ? minimum : "impossible"));
            r = scanner.nextInt();
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
