import java.util.Scanner;

public class Main {

    static void elapsed(int startH, int startM, int endH, int endM, int[] elapsed) {
        int startMinutes = 60 * startH + startM;
        int endMinutes = 60 * endH + endM;
        elapsed[1] = endMinutes - startMinutes;
        if (elapsed[1] < 1)
            elapsed[1] += 1440;
        elapsed[0] = elapsed[1] / 60;
        elapsed[1] = elapsed[1] % 60;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int startH = scanner.nextInt();
        int startM = scanner.nextInt();
        int endH = scanner.nextInt();
        int endM = scanner.nextInt();
        scanner.close();

        int[] elapsed = new int[2];
        elapsed(startH, startM, endH, endM, elapsed);
        System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", elapsed[0], elapsed[1]);
    }
}
