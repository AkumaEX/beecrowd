import java.util.Scanner;

public class Main {

    static double area(int l) {
        return Math.pow(l, 2) * 2 * Math.sqrt(3) / 5;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int l = scanner.nextInt();
            System.out.printf("%.2f\n", area(l));
        }
        scanner.close();
    }
}
