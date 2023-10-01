import java.util.Map;
import java.util.Scanner;

public class Main {

    static Map<String, Map<String, String>> fromB = Map.of(
            "*.", Map.of("..", "1", "*.", "2", ".*", "5", "**", "8"),
            "**", Map.of("..", "3", "*.", "6", ".*", "4", "**", "7"),
            ".*", Map.of("*.", "9", "**", "0"));

    static Map<Character, Map<Integer, String>> toB = Map.of(
            '1', Map.of(0, "*.", 1, "..", 2, ".."),
            '2', Map.of(0, "*.", 1, "*.", 2, ".."),
            '3', Map.of(0, "**", 1, "..", 2, ".."),
            '4', Map.of(0, "**", 1, ".*", 2, ".."),
            '5', Map.of(0, "*.", 1, ".*", 2, ".."),
            '6', Map.of(0, "**", 1, "*.", 2, ".."),
            '7', Map.of(0, "**", 1, "**", 2, ".."),
            '8', Map.of(0, "*.", 1, "**", 2, ".."),
            '9', Map.of(0, ".*", 1, "*.", 2, ".."),
            '0', Map.of(0, ".*", 1, "**", 2, ".."));

    static void translateFromB(int d, Scanner scanner) {
        String[][] sentence = new String[3][d];
        for (int line = 0; line < 3; line++)
            for (int cell = 0; cell < d; cell++)
                sentence[line][cell] = scanner.next();
        for (int cell = 0; cell < d; cell++) {
            String topCell = sentence[0][cell];
            String midCell = sentence[1][cell];
            String separator = cell < d - 1 ? "" : "\n";
            System.out.printf(fromB.get(topCell).get(midCell) + separator);
        }
    }

    static void translateToB(int d, Scanner scanner) {
        String sentence = scanner.next();
        for (int line = 0; line < 3; line++) {
            for (int digit = 0; digit < d; digit++) {
                char num = sentence.charAt(digit);
                String separator = digit < d - 1 ? " " : "\n";
                System.out.printf(toB.get(num).get(line) + separator);
            }
        }

    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int d = scanner.nextInt();
        while (d != 0) {
            if (scanner.next().equals("B"))
                translateFromB(d, scanner);
            else
                translateToB(d, scanner);
            d = scanner.nextInt();
        }
        scanner.close();
    }
}
