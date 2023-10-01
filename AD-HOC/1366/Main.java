import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) != 0) {
            int pairs = 0;
            for (int i = 0; i < n; i++) {
                scanner.nextInt();
                pairs += scanner.nextInt() / 2;
            }
            int rectangles = pairs / 2;
            System.out.println(rectangles);
        }
        scanner.close();
    }
}
