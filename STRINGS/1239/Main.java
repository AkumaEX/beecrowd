import java.util.Scanner;

public class Main {

    static String translate(String line) {
        line = line.replaceAll("_(.*?)_", "<i>$1</i>");
        return line.replaceAll("\\*(.*?)\\*", "<b>$1</b>");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String line = scanner.nextLine();
            System.out.println(translate(line));
        }
        scanner.close();
    }
}
