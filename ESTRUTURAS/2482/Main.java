import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<String, String> getMessages(int n, Scanner scanner) {
        HashMap<String, String> messages = new HashMap<String, String>();
        for (int times = 0; times < n; times++) {
            String language = scanner.nextLine().trim();
            String message = scanner.nextLine().trim();
            messages.put(language, message);
        }
        return messages;
    }

    static void formattedPrint(int m, HashMap<String, String> messages, Scanner scanner) {
        for (int times = 0; times < m; times++) {
            String name = scanner.nextLine().trim();
            String language = scanner.nextLine().trim();
            System.out.println(name);
            System.out.println(messages.get(language));
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        HashMap<String, String> messages = getMessages(n, scanner);
        int m = scanner.nextInt();
        scanner.nextLine();
        formattedPrint(m, messages, scanner);
        scanner.close();
    }
}
