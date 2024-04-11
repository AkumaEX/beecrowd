import java.util.Scanner;

public class Main {

    static int elapsed(int start, int finish) {
        if (finish > start)
            return finish - start;
        return finish - start + 24;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int start = scanner.nextInt();
        int finish = scanner.nextInt();
        System.out.printf("O JOGO DUROU %d HORA(S)\n", elapsed(start, finish));
        scanner.close();
    }
}
