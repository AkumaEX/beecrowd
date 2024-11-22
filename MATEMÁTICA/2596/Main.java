import java.util.Scanner;

public class Main {

    static int minSpheres(int n) {
        return n - (int) Math.sqrt(n);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            int n = scanner.nextInt();
            System.out.println(minSpheres(n));
        }
        scanner.close();
    }
}