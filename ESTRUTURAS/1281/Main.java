import java.util.HashMap;
import java.util.Locale;
import java.util.Scanner;

public class Main {

    static HashMap<String, Double> getProducts(Scanner scanner) {
        HashMap<String, Double> products = new HashMap<String, Double>();
        int m = scanner.nextInt();
        while (m-- > 0) {
            String product = scanner.next();
            Double price = scanner.nextDouble();
            products.put(product, price);
        }
        return products;
    }

    static double getTotal(HashMap<String, Double> products, Scanner scanner) {
        double total = 0;
        int p = scanner.nextInt();
        while (p-- > 0) {
            String product = scanner.next();
            int qty = scanner.nextInt();
            total += products.get(product) * qty;
        }
        return total;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int n = scanner.nextInt();
        while (n-- > 0) {
            HashMap<String, Double> products = getProducts(scanner);
            double total = getTotal(products, scanner);
            System.out.printf("R$ %.2f\n", total);
        }
        scanner.close();
    }
}
