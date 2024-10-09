import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<String, Integer> getShoes(int n, Scanner scanner) {
        HashMap<String, Integer> shoes = new HashMap<String, Integer>();
        shoes.put("F", 0);
        shoes.put("M", 0);
        scanner.nextLine();
        String[] line = scanner.nextLine().trim().split(" ");
        for (int i = 0; i < line.length; i += 2) {
            int size = Integer.parseInt(line[i]);
            String genre = line[i + 1];
            if (size == n)
                shoes.put(genre, shoes.get(genre) + 1);
        }
        return shoes;
    }

    static void formattedPrint(int c, HashMap<String, Integer> shoes) {
        if (c > 1)
            System.out.println();
        System.out.printf("Caso %d:\n", c);
        System.out.printf("Pares Iguais: %d\n", shoes.get("F") + shoes.get("M"));
        System.out.printf("F: %d\n", shoes.get("F"));
        System.out.printf("M: %d\n", shoes.get("M"));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for (int c = 1; scanner.hasNext(); c++) {
            int n = scanner.nextInt();
            formattedPrint(c, getShoes(n, scanner));
        }
        scanner.close();
    }
}
