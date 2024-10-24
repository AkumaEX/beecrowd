import java.util.Scanner;

public class Main {

    static double percentage(String character, String[] text) {
        int count = 0;
        for (String word : text)
            if (word.contains(character))
                count++;
        return 100.0 * count / text.length;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String character = scanner.nextLine().trim();
        String[] text = scanner.nextLine().trim().split(" ");
        System.out.printf("%.1f\n", percentage(character, text));
        scanner.close();
    }
}
