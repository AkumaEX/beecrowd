import java.util.Scanner;

public class Main {

    static boolean isMultiple(int a, int b) {
        return a % b == 0 || b % a == 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        System.out.println(isMultiple(a, b) ? "Sao Multiplos" : "Nao sao Multiplos");
        scanner.close();
    }
}
