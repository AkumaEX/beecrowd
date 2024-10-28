import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> queue = new ArrayList<String>();
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++)
            queue.add(scanner.next());
        int m = scanner.nextInt();
        for (int i = 0; i < m; i++)
            queue.remove(scanner.next());
        System.out.println(String.join(" ", queue));
        scanner.close();
    }
}
