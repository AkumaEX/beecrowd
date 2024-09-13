import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {

    static boolean tautogram(String sentence) {
        return Stream.of(sentence.split(" ")).map(word -> word.substring(0, 1).toLowerCase()).collect(Collectors.toSet()).size() == 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String sentence = scanner.nextLine().trim();
        while (!sentence.contains("*")) {
            System.out.println(tautogram(sentence) ? "Y" : "N");
            sentence = scanner.nextLine().trim();
        }
        scanner.close();
    }
}
