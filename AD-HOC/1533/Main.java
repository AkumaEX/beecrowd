import java.util.Scanner;
import java.util.Arrays;

public class Main {

    static int mostSuspicios(int n, Integer[] suspects) {
        Integer[] howSuspicious = suspects.clone();
        Arrays.sort(howSuspicious);
        int second = howSuspicious[n - 2];
        return Arrays.asList(suspects).indexOf(second) + 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0) {
            Integer[] suspects = new Integer[n];
            for (int i = 0; i < n; i++)
                suspects[i] = scanner.nextInt();
            System.out.println(mostSuspicios(n, suspects));
        }
        scanner.close();
    }
}
