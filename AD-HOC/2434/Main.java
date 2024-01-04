import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int s = scanner.nextInt();
        int min = s;
        for (int day = 0; day < n; day++) {
            s += scanner.nextInt();
            if (s < min)
                min = s;
        }
        System.out.println(min);
        scanner.close();
    }
}
