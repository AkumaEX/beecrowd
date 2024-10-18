import java.util.Scanner;

public class Main {

    static String decypher(String word) {
        int length = word.length();
        int middle = length / 2;
        String[] result = new String[length];
        String[] chars = word.split("");
        for (int i = 0; i < length; i++)
            result[length - 1 - i] = chars[(middle + i) % length];
        return String.join("", result);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        while (n-- > 0) {
            String word = scanner.nextLine().replace("\n", "");
            System.out.println(decypher(word));
        }
        scanner.close();
    }
}
