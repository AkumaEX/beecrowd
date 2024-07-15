import java.util.HashSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int q = scanner.nextInt();
        int e = scanner.nextInt();
        HashSet<Integer> s = new HashSet<Integer>();
        while (e-- > 0) s.add(scanner.nextInt());
        while (q-- > 0) {
            int office = scanner.nextInt();
            if (s.contains(office)) {
                System.out.println(0);
            } else {
                System.out.println(1);
                s.add(office);
            }
        }
        scanner.close();
    }
}
