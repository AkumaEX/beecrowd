import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int R = scanner.nextInt();
        scanner.close();
        double volume = (4.0 / 3) * 3.14159 * Math.pow(R, 3);
        System.out.printf("VOLUME = %.3f\n", volume);
    }
}