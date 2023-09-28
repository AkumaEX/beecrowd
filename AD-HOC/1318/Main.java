import java.util.HashMap;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        while (n != 0 || m != 0) {
            HashMap<Integer, Integer> clones = new HashMap<Integer, Integer>();
            for (int i = 0; i < m; i++) {
                int ticket = scanner.nextInt();
                clones.put(ticket, clones.containsKey(ticket) ? 1 : 0);
            }
            System.out.println(clones.values().stream().reduce(0, Integer::sum));
            n = scanner.nextInt();
            m = scanner.nextInt();
        }
        scanner.close();
    }
}