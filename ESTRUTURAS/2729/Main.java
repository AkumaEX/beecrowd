import java.util.Arrays;
import java.util.TreeSet;
import java.util.Scanner;

public class Main {

    static TreeSet<String> getItems(Scanner scanner) {
        return new TreeSet<String>(Arrays.asList(scanner.nextLine().trim().split(" ")));
    }

    static void formattedPrint(TreeSet<String> items) {
        System.out.println(String.join(" ", items));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        while (n-- > 0) {
            TreeSet<String> items = getItems(scanner);
            formattedPrint(items);
        }
        scanner.close();
    }
}