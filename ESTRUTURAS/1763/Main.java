import java.util.Map;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Map<String, String> dictionary = Map.ofEntries(Map.entry("brasil", "Feliz Natal!"),
                Map.entry("alemanha", "Frohliche Weihnachten!"), Map.entry("austria", "Frohe Weihnacht!"),
                Map.entry("coreia", "Chuk Sung Tan!"), Map.entry("espanha", "Feliz Navidad!"),
                Map.entry("grecia", "Kala Christougena!"), Map.entry("estados-unidos", "Merry Christmas!"),
                Map.entry("inglaterra", "Merry Christmas!"), Map.entry("australia", "Merry Christmas!"),
                Map.entry("portugal", "Feliz Natal!"), Map.entry("suecia", "God Jul!"),
                Map.entry("turquia", "Mutlu Noeller"), Map.entry("argentina", "Feliz Navidad!"),
                Map.entry("chile", "Feliz Navidad!"), Map.entry("mexico", "Feliz Navidad!"),
                Map.entry("antardida", "Merry Christmas!"), Map.entry("canada", "Merry Christmas!"),
                Map.entry("irlanda", "Nollaig Shona Dhuit!"), Map.entry("belgica", "Zalig Kerstfeest!"),
                Map.entry("italia", "Buon Natale!"), Map.entry("libia", "Buon Natale!"),
                Map.entry("siria", "Milad Mubarak!"), Map.entry("marrocos", "Milad Mubarak!"),
                Map.entry("japao", "Merii Kurisumasu!"));
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            System.out.println(dictionary.getOrDefault(scanner.next(), "--- NOT FOUND ---"));
        }
        scanner.close();
    }
}