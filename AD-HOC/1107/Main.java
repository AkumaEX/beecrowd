import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int numLasers(int a, int c, int[] x) {
        int lasers = a - x[0];
        for (int i = 1; i < c; i++)
            if (x[i - 1] > x[i])
                lasers += x[i - 1] - x[i];
        return lasers;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int c = scanner.nextInt();
        while (a > 0 || c > 0) {
            int[] x = IntStream.range(0, c).map(i -> scanner.nextInt()).toArray();
            System.out.println(numLasers(a, c, x));
            a = scanner.nextInt();
            c = scanner.nextInt();
        }
        scanner.close();
    }
}
