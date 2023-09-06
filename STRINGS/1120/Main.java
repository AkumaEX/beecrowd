import java.math.BigInteger;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String D = scanner.next();
            String K = scanner.next();
            if (D.equals("0") && K.equals("0"))
                break;
            BigInteger result = new BigInteger("0" + K.replaceAll(D, ""));
            System.out.println(result.toString());
        }
        scanner.close();
    }
}