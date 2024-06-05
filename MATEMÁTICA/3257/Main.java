import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int days(int n, Integer[] t) {
        Arrays.sort(t, Comparator.reverseOrder());
        IntStream.range(0, n).forEach(i -> t[i] += i + 2);
        return Collections.max(Arrays.asList(t));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        Integer[] t = IntStream.range(0, n).map(i -> scanner.nextInt()).boxed().toArray(Integer[]::new);
        System.out.println(days(n, t));
        scanner.close();
    }
}
