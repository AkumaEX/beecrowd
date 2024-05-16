import java.util.Scanner;
import java.util.stream.Stream;
import java.util.regex.MatchResult;
import java.util.regex.Pattern;
import java.util.stream.IntStream;

public class Main {

    static int sumNumbers(String string) {
        Stream<MatchResult> matches = Pattern.compile("\\d+").matcher(string).results();
        IntStream numbers = matches.mapToInt(match -> Integer.parseInt(match.group()));
        return numbers.sum();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0)
            System.out.println(sumNumbers(scanner.next()));
        scanner.close();
    }
}
