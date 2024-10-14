import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int leastSwaps(int l, int[] carriages) {
        int swaps = 0;
        for (int i = 0; i < l - 1; i++)
            for (int j = i + 1; j < l; j++)
                if (carriages[i] > carriages[j])
                    swaps++;
        return swaps;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int l = scanner.nextInt();
            int[] carriages = IntStream.range(0, l).map(i -> scanner.nextInt()).toArray();
            System.out.printf("Optimal train swapping takes %d swaps.\n", leastSwaps(l, carriages));
        }
        scanner.close();
    }
}
