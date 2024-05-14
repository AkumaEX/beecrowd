import java.util.Scanner;

public class Main {

    static int maxCakes(int a, int b, int c) {
        return Math.min(Math.min(a / 2, b / 3), c / 5);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        System.out.println(maxCakes(a, b, c));
        scanner.close();
    }
}
