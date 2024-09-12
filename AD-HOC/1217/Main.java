import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double totalPrice = 0.0;
        double totalWeight = 0.0;
        int n = scanner.nextInt();
        for (int day = 1; day < n + 1; day++) {
            totalPrice += scanner.nextDouble();
            scanner.nextLine();
            int weight = scanner.nextLine().trim().split(" ").length;
            System.out.printf("day %d: %d kg\n", day, weight);
            totalWeight += weight;
        }
        System.out.printf("%.2f kg by day\n", totalWeight / n);
        System.out.printf("R$ %.2f by day\n", totalPrice / n);
        scanner.close();
    }
}
