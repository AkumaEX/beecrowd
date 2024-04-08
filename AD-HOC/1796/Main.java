import java.util.Scanner;

public class Main {

    static boolean majorityOk(int q, int opinion) {
        return opinion < (float) q / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opinion = 0;
        int q = scanner.nextInt();
        for (int i = 0; i < q; i++)
            opinion += scanner.nextInt();
        System.out.println(majorityOk(q, opinion) ? "Y" : "N");
        scanner.close();
    }
}
