import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<String, Integer> initialQuantities() {
        HashMap<String, Integer> quantities = new HashMap<String, Integer>();
        quantities.put("C", 0);
        quantities.put("R", 0);
        quantities.put("S", 0);
        return quantities;
    }

    static void formattedPrint(HashMap<String, Integer> quantities) {
        int total = quantities.get("C") + quantities.get("R") + quantities.get("S");
        System.out.printf("Total: %d cobaias\n", total);
        System.out.printf("Total de coelhos: %d\n", quantities.get("C"));
        System.out.printf("Total de ratos: %d\n", quantities.get("R"));
        System.out.printf("Total de sapos: %d\n", quantities.get("S"));
        System.out.printf("Percentual de coelhos: %.2f %%\n", 100.0 * quantities.get("C") / total);
        System.out.printf("Percentual de ratos: %.2f %%\n", 100.0 * quantities.get("R") / total);
        System.out.printf("Percentual de sapos: %.2f %%\n", 100.0 * quantities.get("S") / total);
    }

    public static void main(String[] args) {
        HashMap<String, Integer> quantities = initialQuantities();
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int quantity = scanner.nextInt();
            String type = scanner.next();
            quantities.put(type, quantities.get(type) + quantity);
        }
        formattedPrint(quantities);
        scanner.close();
    }
}
