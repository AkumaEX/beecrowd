import java.util.Scanner;
import java.math.BigInteger;

public class Main {
    static BigInteger getWeight(int x) {
        BigInteger grains = BigInteger.ONE;
        for (int i = 0; i < x; i++)
            grains = grains.multiply(BigInteger.TWO);
        return grains.divide(BigInteger.valueOf(12000));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            int x = scanner.nextInt();
            BigInteger weight = getWeight(x);
            System.out.printf("%s kg\n", weight.toString());
        }
        scanner.close();
    }
}
