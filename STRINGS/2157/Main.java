import java.util.Scanner;

public class Main {

    static String mirroredSequence(int b, int e) {
        String sequence = "";
        for (int i = b; i <= e; i++)
            sequence += String.valueOf(i);
        for (int i = sequence.length() - 1; i >= 0; i--)
            sequence += sequence.charAt(i);
        return sequence;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        for (int times = 0; times < c; times++) {
            int b = scanner.nextInt();
            int e = scanner.nextInt();
            System.out.println(mirroredSequence(b, e));
        }
        scanner.close();
    }
}
