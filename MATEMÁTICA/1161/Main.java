import java.math.BigInteger;
import java.util.Scanner;

public class Main {

    static BigInteger factorial(int n, BigInteger[] lookup) {
        if (n < 2)
            return BigInteger.valueOf(1);
        if (lookup[n].equals(BigInteger.ZERO))
            lookup[n] = BigInteger.valueOf(n).multiply(factorial(n - 1, lookup));
        return lookup[n];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        BigInteger[] lookup = new BigInteger[21];
        for (int i = 0; i <= 20; i++)
            lookup[i] = BigInteger.ZERO;
        while (scanner.hasNext()) {
            int m = scanner.nextInt();
            int n = scanner.nextInt();
            System.out.println(factorial(m, lookup).add(factorial(n, lookup)).toString());
        }
        scanner.close();
    }
}