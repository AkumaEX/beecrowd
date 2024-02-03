import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0) {
            int cumulativeDebt = 0;
            int timesToAsk = 0;
            for (int i = 0; i < n; i++) {
                cumulativeDebt += scanner.nextInt();
                if (cumulativeDebt % 100 == 0)
                    timesToAsk++;
            }
            System.out.println(timesToAsk);
        }
        scanner.close();
    }
}
