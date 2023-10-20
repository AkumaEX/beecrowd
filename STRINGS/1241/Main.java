import java.util.Scanner;
import java.util.regex.Pattern;

public class Main {

    static boolean fits(String b, String a) {
        return Pattern.compile(b + "$").matcher(a).find();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            String a = scanner.next().trim();
            String b = scanner.next().trim();
            System.out.println(fits(b, a) ? "encaixa" : "nao encaixa");
        }
        scanner.close();
    }
}