import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int max = 0, position = 0;
        for (int i = 1; i < 101; i++) {
            int value = scanner.nextInt();
            if (value > max) {
                max = value;
                position = i;
            }
        }
        System.out.println(max);
        System.out.println(position);
        scanner.close();
    }
}
