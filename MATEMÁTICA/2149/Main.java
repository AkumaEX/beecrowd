import java.util.Scanner;

public class Main {

    static long phillBonati(int n, long[] memo) {
        if (memo[n] == 0) {
            if (n < 2)
                memo[n] = n;
            else if (n % 2 > 0)
                memo[n] = phillBonati(n - 1, memo) * phillBonati(n - 2, memo);
            else
                memo[n] = phillBonati(n - 1, memo) + phillBonati(n - 2, memo);
        }
        return memo[n];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        long[] memo = new long[18];
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            System.out.println(phillBonati(n - 1, memo));
        }
        scanner.close();
    }
}
