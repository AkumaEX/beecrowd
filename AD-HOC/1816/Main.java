import java.util.Scanner;
import java.util.LinkedList;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int m, h = 1;
        while ((m = scanner.nextInt()) > 0) {
            LinkedList<String> cypher = new LinkedList<String>(Arrays.asList("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"));
            System.out.printf("Instancia %d\n", h++);
            while (m-- > 0) {
                int code = scanner.nextInt();
                System.out.printf("%s", cypher.get(code - 1));
                cypher.addFirst(cypher.remove(code - 1));
            }
            System.out.println("\n");
        }
        scanner.close();
    }
}