import java.util.Locale;
import java.util.Scanner;

public class Main {

    static int maximumViewpoints(int n, int x, int[] a) {
        int max = 1;
        int viewpoints = 1;
        for (int i = 0; i < n - 1; i++) {
            if (a[i + 1] - a[i] > x)
                viewpoints = 1;
            else if (++viewpoints > max)
                max = viewpoints;
        }
        return max;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int n = scanner.nextInt();
        int x = scanner.nextInt();
        int[] a = new int[n];
        for (int i = 0; i < n; i++)
            a[i] = scanner.nextInt();
        System.out.println(maximumViewpoints(n, x, a));
        scanner.close();
    }
}
