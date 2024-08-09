import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for (int test = 1, r = scanner.nextInt(); r > 0; test++, r = scanner.nextInt()) {
            System.out.printf("Teste %d\n", test);
            int totalA = 0, totalB = 0;
            while (r-- > 0) {
                totalA += scanner.nextInt();
                totalB += scanner.nextInt();
            }
            System.out.printf("%s\n\n", totalA > totalB ? "Aldo" : "Beto");
        }
        scanner.close();
    }
}