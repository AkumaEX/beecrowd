import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static String translate(int n, Scanner scanner) {
        HashMap<String, String> dictionary = new HashMap<String, String>() {
            {
                put("61", "a");
                put("62", "b");
                put("63", "c");
                put("64", "d");
                put("65", "e");
                put("66", "f");
                put("67", "g");
                put("68", "h");
                put("69", "i");
                put("6A", "j");
                put("6B", "k");
                put("6C", "l");
                put("6D", "m");
                put("6E", "n");
                put("6F", "o");
                put("70", "p");
                put("71", "q");
                put("72", "r");
                put("73", "s");
                put("74", "t");
                put("75", "u");
                put("76", "v");
                put("77", "w");
                put("78", "x");
                put("79", "y");
                put("7A", "z");
            }
        };
        String translation = "";
        for (int i = 0; i < n; i++)
            translation += dictionary.get(scanner.next());
        return translation;

    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        System.out.println(translate(n, scanner));
        scanner.close();
    }
}