import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static boolean isPossible(int b, int n, Scanner scanner) {
        int[] banks = IntStream.range(0, b).map(i -> scanner.nextInt()).toArray();
        while (n-- > 0) {
            int d = scanner.nextInt();
            int c = scanner.nextInt();
            int v = scanner.nextInt();
            banks[d - 1] -= v;
            banks[c - 1] += v;
        }
        for (int reserve : banks)
            if (reserve < 0)
                return false;
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int b = scanner.nextInt();
        int n = scanner.nextInt();
        while (b > 0 || n > 0) {
            System.out.println(isPossible(b, n, scanner) ? "S" : "N");
            b = scanner.nextInt();
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
