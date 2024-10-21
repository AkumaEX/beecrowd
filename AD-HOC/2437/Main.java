import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int xM = scanner.nextInt();
        int yM = scanner.nextInt();
        int xR = scanner.nextInt();
        int yR = scanner.nextInt();
        System.out.println(Math.abs(xM - xR) + Math.abs(yM - yR));
        scanner.close();
    }
}
