import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int maxLethality(int n, int[] a) {
        Arrays.sort(a);
        int lethality = 0;
        for (int i = 0; i < n / 2; i++)
            lethality += a[n - 1 - i] - a[i];
        return lethality;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            scanner.nextLine();
            int[] a = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
            scanner.nextLine();
            System.out.println(maxLethality(n, a));
        }
        scanner.close();
    }
}
