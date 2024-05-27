import java.util.Scanner;

public class Main {

    static int seconds(int startD, int startH, int startM, int startS, int endD, int endH, int endM, int endS) {
        return 86400 * (endD - startD) + 3600 * (endH - startH) + 60 * (endM - startM) + (endS - startS);
    }

    static void formattedPrint(int elapsed) {
        System.out.printf("%d dia(s)\n", elapsed / 86400);
        elapsed %= 86400;
        System.out.printf("%d hora(s)\n", elapsed / 3600);
        elapsed %= 3600;
        System.out.printf("%d minuto(s)\n", elapsed / 60);
        System.out.printf("%d segundo(s)\n", elapsed % 60);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        scanner.next();
        int startD = scanner.nextInt();
        int startH = scanner.nextInt();
        scanner.next();
        int startM = scanner.nextInt();
        scanner.next();
        int startS = scanner.nextInt();
        scanner.nextLine();
        scanner.next();
        int endD = scanner.nextInt();
        int endH = scanner.nextInt();
        scanner.next();
        int endM = scanner.nextInt();
        scanner.next();
        int endS = scanner.nextInt();
        int elapsed = seconds(startD, startH, startM, startS, endD, endH, endM, endS);
        formattedPrint(elapsed);
        scanner.close();
    }
}
