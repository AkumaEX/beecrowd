import java.util.Map;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Map<String, Map<String, Map<String, String>>> animals = Map.of(
            "vertebrado", Map.of(
                "ave", Map.of("carnivoro", "aguia", "onivoro", "pomba"),
                "mamifero", Map.of("onivoro", "homem", "herbivoro", "vaca")
            ),
            "invertebrado", Map.of(
                "inseto", Map.of("hematofago", "pulga", "herbivoro", "lagarta"),
                "anelideo", Map.of("hematofago", "sanguessuga", "onivoro", "minhoca")
            )
        );

        Scanner scanner = new Scanner(System.in);
        String word1 = scanner.nextLine().trim();
        String word2 = scanner.nextLine().trim();
        String word3 = scanner.nextLine().trim();
        System.out.println(animals.get(word1).get(word2).get(word3));
        scanner.close();
    }
}
