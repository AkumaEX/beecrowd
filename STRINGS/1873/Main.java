import java.util.Scanner;
import java.util.Map;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Map<String, List<String>> wins = Map.of(
                "tesoura", List.of("papel", "lagarto"),
                "papel", List.of("pedra", "spock"),
                "pedra", List.of("lagarto", "tesoura"),
                "lagarto", List.of("spock", "papel"),
                "spock", List.of("tesoura", "pedra"));

        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            String rajesh = scanner.next();
            String sheldon = scanner.next();
            if (wins.get(rajesh).contains(sheldon))
                System.out.println("rajesh");
            else if (wins.get(sheldon).contains(rajesh))
                System.out.println("sheldon");
            else
                System.out.println("empate");
        }
        scanner.close();
    }
}
