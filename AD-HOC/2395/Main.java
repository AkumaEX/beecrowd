import java.util.Scanner;

public class Main {

    static int maxContainers(int a, int b, int c, int x, int y, int z) {
        return (x / a) * (y / b) * (z / c);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        int z = scanner.nextInt();
        System.out.println(maxContainers(a, b, c, x, y, z));
        scanner.close();
    }
}
