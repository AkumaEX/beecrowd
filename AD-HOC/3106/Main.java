import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int max = 0, n = scanner.nextInt();
        while (n-- > 0) {
            int students = scanner.nextInt();
            max += students - students % 3;
        }
        System.out.println(max);
        scanner.close();
    }
}
