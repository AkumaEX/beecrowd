import java.util.Scanner;

public class Main {

    static String topTeam(int cv, int ce, int cs, int fv, int fe, int fs) {
        int cScore = 3 * cv + ce;
        int fScore = 3 * fv + fe;
        if (cScore == fScore) {
            cScore += cs;
            fScore += fs;
        }
        if (cScore > fScore)
            return "C";
        if (fScore > cScore)
            return "F";
        return "=";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int cv = scanner.nextInt();
        int ce = scanner.nextInt();
        int cs = scanner.nextInt();
        int fv = scanner.nextInt();
        int fe = scanner.nextInt();
        int fs = scanner.nextInt();
        System.out.println(topTeam(cv, ce, cs, fv, fe, fs));
        scanner.close();
    }
}