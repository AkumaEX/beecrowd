import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int angle = scanner.nextInt();
            if (angle % 6 == 0)
                System.out.println('Y');
            else
                System.out.println('N');
        }
        scanner.close();
    }
}
