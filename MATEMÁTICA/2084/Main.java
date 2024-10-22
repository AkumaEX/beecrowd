import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int results(int n, int[] v) {
        Arrays.sort(v);
        int total = Arrays.stream(v).sum();
        if (v[n - 1] >= total * 0.45 || v[n - 1] >= total * 0.4 && v[n - 1] - v[n - 2] >= total * 0.1)
            return 1;
        return 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] v = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
        System.out.println(results(n, v));
        scanner.close();
    }
}
