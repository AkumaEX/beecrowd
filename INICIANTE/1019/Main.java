import java.util.Scanner;

public class Main {

    static void printFormatted(int n) {
        int hours = n / 3600;
        n = n % 3600;
        int minutes = n / 60;
        int seconds = n % 60;
        System.out.println(hours + ":" + minutes + ":" + seconds);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        printFormatted(n);
        scanner.close();
    }
}