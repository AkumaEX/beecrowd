import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        scanner.close();
        if (x > y) {
            int aux = x;
            x = y;
            y = aux;
        }
        for (int n = x + 1; n < y; n++)
            if (n % 5 == 2 || n % 5 == 3)
                System.out.println(n);
    }
}
