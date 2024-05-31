import java.util.HashSet;
import java.util.Scanner;

public class Main {

    static String language(int k, Scanner scanner) {
        HashSet<String> languages = new HashSet<String>();
        while (k-- > 0) languages.add(scanner.next());
        return languages.size() == 1 ? languages.iterator().next() : "ingles";
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int k = scanner.nextInt();
            System.out.println(language(k, scanner));
        }
        scanner.close();
    }
}
