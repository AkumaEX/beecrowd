import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int totalPairs(int n, int i, int f, int[] vector) {
        int total = 0;
        for (int p = 0; p < n - 1; p++) {
            for (int q = p + 1; q < n; q++) {
                int pair = vector[p] + vector[q];
                if (i <= pair && pair <= f)
                    total++;
            }
        }
        return total;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int i = scanner.nextInt();
        int f = scanner.nextInt();
        int[] vector = IntStream.range(0, n).map(value -> scanner.nextInt()).toArray();
        System.out.println(totalPairs(n, i, f, vector));
        scanner.close();
    }
}
