import java.util.Scanner;

public class Main {

    static void printFormatted(int i) {
        String a = "a".repeat(i);
        System.out.println("Ent" + a + "o eh N" + a + "t" + a + "l!");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int i = scanner.nextInt();
        printFormatted(i);
        scanner.close();
    }
}
