import java.util.Map;
import java.util.Scanner;

public class Main {
    static Map<Integer, String> members = Map.of(
            1, "Rolien",
            2, "Naej",
            3, "Elehcim",
            4, "Odranoel");

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int days = 0; days < n; days++) {
            int k = scanner.nextInt();
            for (int feedbacks = 0; feedbacks < k; feedbacks++) {
                int feedback = scanner.nextInt();
                System.out.println(members.get(feedback));
            }
        }
        scanner.close();
    }
}
