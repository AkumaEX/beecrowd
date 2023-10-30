import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Main {

    static HashMap<String, Integer> getScores(int p, Scanner scanner) {
        Map<String, Map<String, Integer>> points = Map.of(
                "R", Map.of("B", 1, "G", 2),
                "G", Map.of("R", 1, "B", 2),
                "B", Map.of("G", 1, "R", 2));
        HashMap<String, Integer> scores = new HashMap<String, Integer>() {
            {
                put("R", 0);
                put("G", 0);
                put("B", 0);
            }
        };
        for (int times = 0; times < p; times++) {
            String m = scanner.next();
            String s = scanner.next();
            scores.put(m, scores.get(m) + points.get(m).get(s));
        }
        return scores;
    }

    static String getWinner(HashMap<String, Integer> scores) {
        if (scores.get("R") > scores.get("G") && scores.get("R") > scores.get("B"))
            return "red";
        else if (scores.get("G") > scores.get("R") && scores.get("G") > scores.get("B"))
            return "green";
        else if (scores.get("B") > scores.get("R") && scores.get("B") > scores.get("G"))
            return "blue";
        else if (scores.get("R") == scores.get("G") && scores.get("R") == scores.get("B"))
            return "trempate";
        return "empate";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        for (int times = 0; times < c; times++) {
            int p = scanner.nextInt();
            HashMap<String, Integer> scores = getScores(p, scanner);
            System.out.println(getWinner(scores));
        }
        scanner.close();
    }
}