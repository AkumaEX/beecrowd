import java.util.Scanner;

public class Main {

    static int getEdgeSize(int a, int b, int c) {
        double edgeSize = Math.pow(a * b * c, 1.0 / 3);
        return (int) edgeSize;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        while (a > 0 && b > 0 && c > 0) {
            System.out.println(getEdgeSize(a, b, c));
            a = scanner.nextInt();
            b = scanner.nextInt();
            c = scanner.nextInt();
        }
        scanner.close();
    }
}
