import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int r = scanner.nextInt();
        double volume = (4.0 / 3) * 3.14159 * Math.pow(r, 3);
        System.out.printf("VOLUME = %.3f\n", volume);
        scanner.close();
    }
}