import java.util.Scanner;
import java.util.regex.Pattern;

public class Main {

    static int getNumVariations(String s) {
        return (int) (Math.pow(3, Pattern.compile("[AEIOS]", Pattern.CASE_INSENSITIVE).matcher(s).results().count())
                * Math.pow(2, Pattern.compile("[^AEIOS]", Pattern.CASE_INSENSITIVE).matcher(s).results().count()));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int test = 0; test < t; test++) {
            String s = scanner.next().strip();
            int numVariations = getNumVariations(s);
            System.out.println(numVariations);
        }
        scanner.close();
    }
}