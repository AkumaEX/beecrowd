import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class Main {

    static List<Integer> notReturned(int n, int r, Scanner scanner) {
        List<Integer> divers = IntStream.rangeClosed(1, n).boxed().collect(Collectors.toList());
        while (r-- > 0)
            divers.remove(Integer.valueOf(scanner.nextInt()));
        divers.sort((a, b) -> a - b);
        return divers;
    }

    static void formattedPrint(List<Integer> divers) {
        for (Integer diver : divers)
            System.out.printf("%d ", diver);
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            int r = scanner.nextInt();
            if (n > r) {
                List<Integer> divers = notReturned(n, r, scanner);
                formattedPrint(divers);
            } else {
                scanner.nextLine();
                scanner.nextLine();
                System.out.println("*");
            }
        }
        scanner.close();
    }
}
