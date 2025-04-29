import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        float t = scanner.nextFloat();
        float v = scanner.nextFloat();
        System.out.printf("%.3f\n", t * v / 12);
        scanner.close();
    }
}
