import java.util.Scanner;
import java.util.TreeMap;

public class Main {
    static String firstCivilization(int n, Scanner scanner) {
        TreeMap<Integer, String> messages = new TreeMap<Integer, String>();
        for (int times = 0; times < n; times++) {
            String civilization = scanner.next();
            int received = scanner.nextInt();
            int traveled = scanner.nextInt();
            messages.put(received - traveled, civilization);
        }
        return messages.get(messages.firstKey());
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0)
            System.out.println(firstCivilization(n, scanner));
        scanner.close();
    }
}
