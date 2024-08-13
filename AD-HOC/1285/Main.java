import java.util.Set;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static int maxQuantity(int m, int n) {
        int quantity = n - m + 1;
        for (int num = m; num < n + 1; num++)
            if (Set.copyOf(Arrays.asList(String.valueOf(num).split(""))).size() != String.valueOf(num).length())
                quantity--;
        return quantity;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int m = scanner.nextInt();
            int n = scanner.nextInt();
            System.out.println(maxQuantity(m, n));
        }
        scanner.close();
    }
}
