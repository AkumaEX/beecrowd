import java.util.Scanner;

public class Main {

    static void printFormatted(int days) {
        int years = days / 365;
        days = days % 365;
        int months = days / 30;
        days = days % 30;
        System.out.println(years + " ano(s)");
        System.out.println(months + " mes(es)");
        System.out.println(days + " dia(s)");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int days = scanner.nextInt();
        printFormatted(days);
        scanner.close();
    }
}