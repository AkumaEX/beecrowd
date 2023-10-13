import java.util.Scanner;

public class Main {

    static boolean canCatch(int d, int vf, int vg) {
        double sg = vg * 12 / vf;
        return sg * sg >= d * d + 12 * 12;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while(scanner.hasNext()) {
            int d = scanner.nextInt();
            int vf = scanner.nextInt();
            int vg = scanner.nextInt();
            System.out.println(canCatch(d, vf, vg) ? "S" : "N");
        }
        scanner.close();
    }
}
