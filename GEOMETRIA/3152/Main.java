import java.util.Scanner;

public class Main {

    static double getArea(Scanner scanner) {
        int x1 = scanner.nextInt();
        int y1 = scanner.nextInt();
        int x2 = scanner.nextInt();
        int y2 = scanner.nextInt();
        int x3 = scanner.nextInt();
        int y3 = scanner.nextInt();
        int x4 = scanner.nextInt();
        int y4 = scanner.nextInt();
        return Math.abs((x1 * y2 - y1 * x2) + (x2 * y3 - y2 * x3) + (x3 * y4 - y3 * x4) + (x4 * y1 - y4 * x1)) / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double areaA = getArea(scanner);
        double areaB = getArea(scanner);
        System.out.printf("terreno %s\n", areaA > areaB ? "A" : "B");
        scanner.close();
    }
}
