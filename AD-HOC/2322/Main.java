import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int missing(int n, int[] pieces) {
        Arrays.sort(pieces);
        for (int i = 0; i < n - 1; i++)
            if (pieces[i] != i + 1)
                return i + 1;
        return n;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] pieces = IntStream.range(0, n - 1).map(i -> scanner.nextInt()).toArray();
        System.out.println(missing(n, pieces));
        scanner.close();
    }
}
