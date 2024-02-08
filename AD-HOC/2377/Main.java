import java.util.Scanner;

public class Main {

    static int totalCost(int l, int d, int k, int p) {
        int distance = l * k;
        int tolls = (l / d) * p;
        return distance + tolls;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int l = scanner.nextInt();
        int d = scanner.nextInt();
        int k = scanner.nextInt();
        int p = scanner.nextInt();
        System.out.println(totalCost(l, d, k, p));
        scanner.close();
    }
}
