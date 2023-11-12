import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int max = 0, num = 0;
        while ((num = scanner.nextInt()) > 0)
            max = num > max ? num : max;
        System.out.println(max);
        scanner.close();
    }
}