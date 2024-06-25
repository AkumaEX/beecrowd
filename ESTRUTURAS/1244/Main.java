import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static String[] strings(Scanner scanner) {
        String[] strings = scanner.nextLine().trim().split(" ");
        Arrays.sort(strings, (a, b) -> Integer.compare(b.length(), a.length()));
        return strings;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        while (n-- > 0)
            System.out.println(String.join(" ", strings(scanner)));
        scanner.close();
    }
}
