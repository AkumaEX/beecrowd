import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int la = scanner.nextInt();
        int lb = scanner.nextInt();
        int sa = scanner.nextInt();
        int sb = scanner.nextInt();

        boolean isPossible = la <= n && n <= lb && sa <= n && n <= sb;
        System.out.println(isPossible ? "possivel" : "impossivel");
        scanner.close();
    }
}