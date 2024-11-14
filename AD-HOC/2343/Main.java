import java.util.HashSet;
import java.util.Scanner;

public class Main {

    static boolean samePlace(int n, Scanner scanner) {
        HashSet<String> lightnings = new HashSet<String>();
        for (int i = 0; i < n; i++)
            lightnings.add(scanner.nextLine());
        return lightnings.size() < n;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        System.out.println(samePlace(n, scanner) ? "1" : "0");
        scanner.close();
    }
}
