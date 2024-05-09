import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int score(int n, int[] v) {
        int longest = 0;
        int sequence = 1;
        for (int i = 0; i < n - 1; i++) {
            if (v[i] == v[i + 1]) {
                sequence++;
                if (sequence > longest)
                    longest = sequence;
            } else {
                sequence = 1;
            }
        }
        return longest;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] v = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
        System.out.println(score(n, v));
        scanner.close();
    }
}
