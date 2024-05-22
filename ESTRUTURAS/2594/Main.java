import java.util.ArrayList;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    static String results(String text, String word) {
        ArrayList<String> indexes = new ArrayList<String>();
        Matcher matcher = Pattern.compile("\\b" + word + "\\b").matcher(text);
        while (matcher.find())
            indexes.add(String.valueOf(matcher.start()));
        return indexes.isEmpty() ? "-1" : String.join(" ", indexes);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int q = scanner.nextInt();
        scanner.nextLine();
        while (q-- > 0) {
            String text = scanner.nextLine().strip();
            String word = scanner.nextLine().strip();
            System.out.println(results(text, word));
        }
        scanner.close();
    }
}
