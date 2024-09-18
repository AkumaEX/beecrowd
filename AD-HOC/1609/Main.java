import java.util.HashSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        while (t-- > 0) {
            HashSet<Integer> sheep = new HashSet<>();
            int n = scanner.nextInt();
            while (n-- > 0)
                sheep.add(scanner.nextInt());
            System.out.println(sheep.size());
        }
        scanner.close();
    }
}
