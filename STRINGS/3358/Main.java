import java.util.Scanner;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        Pattern pattern = Pattern.compile("[^aeiou]{3,}", Pattern.CASE_INSENSITIVE);
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            String name = scanner.next();
            if (pattern.matcher(name).find()) {
                System.out.println(name + " nao eh facil");
            } else {
                System.out.println(name + " eh facil");
            }
        }
        scanner.close();
    }
}
