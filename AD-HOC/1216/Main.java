import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int quantity = 0;
        int friends = 0;
        while (scanner.hasNext()) {
            scanner.nextLine();
            quantity += scanner.nextInt();
            friends++;
            scanner.nextLine();
        }
        System.out.printf("%.1f\n", (double) quantity / friends);
        scanner.close();
    }
}
