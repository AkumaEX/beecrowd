import java.util.Scanner;
import java.util.regex.Pattern;

public class Main {

    static long minCycles(String sequence, int p) {
        return Pattern.compile("R{1," + p + "}|W{1}").matcher(sequence).results().count();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String sequence = scanner.next();
            int p = scanner.nextInt();
            System.out.println(minCycles(sequence, p));
        }
        scanner.close();
    }
}
