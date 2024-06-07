import java.util.HashSet;
import java.util.Map;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Map<Integer, String> results = Map.of(3, "terno", 4, "quadra", 5, "quina", 6, "sena");
        HashSet<Integer> your = new HashSet<Integer>();
        HashSet<Integer> draw = new HashSet<Integer>();
        
        Scanner scanner = new Scanner(System.in);
        for (int i = 0; i < 6; i++)
            your.add(scanner.nextInt());
        for (int i = 0; i < 6; i++)
            draw.add(scanner.nextInt());
        scanner.close();
        
        your.retainAll(draw);
        System.out.println(results.getOrDefault(your.size(), "azar"));
    }
}
