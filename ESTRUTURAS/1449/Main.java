import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<String, String> getDictionary(int m, Scanner scanner) {
        HashMap<String, String> dictionary = new HashMap<String, String>();
        while (m-- > 0) {
            String japanese = scanner.nextLine().trim();
            String portuguese = scanner.nextLine().trim();
            dictionary.put(japanese, portuguese);
        }
        return dictionary;
    }

    static void translateLines(int n, HashMap<String, String> dictionary, Scanner scanner) {
        while (n-- > 0) {
            String[] words = scanner.nextLine().split(" ");
            for (int i = 0; i < words.length; i++) {
                String japanese = words[i];
                if (dictionary.containsKey(japanese))
                    words[i] = dictionary.get(japanese);
            }
            System.out.println(String.join(" ", words));
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        while (t-- > 0) {
            int m = scanner.nextInt();
            int n = scanner.nextInt();
            scanner.nextLine();
            HashMap<String, String> dictionary = getDictionary(m, scanner);
            translateLines(n, dictionary, scanner);
            System.out.println("");
        }
        scanner.close();
    }
}