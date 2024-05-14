import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int section(int n, int[] a) {
        int target = IntStream.of(a).sum() / 2;
        int k = 0;
        for (int size = 0; size < target; size += a[k++]);
        return k;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] a = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
        System.out.println(section(n, a));
        scanner.close();
    }
}
