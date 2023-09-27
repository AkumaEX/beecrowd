import java.util.Scanner;

public class Main {
    
    static Boolean noAbsence(int[][] attendanceList, int n, int d) {
        for (int alumni = 0; alumni < n; alumni++) {
            boolean absence = false;
            for (int dinner = 0; dinner < d; dinner++) {
                if (attendanceList[dinner][alumni] == 0) {
                    absence = true;
                    break;
                }
            }
            if (!absence)
                return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int d = scanner.nextInt();
        while (n != 0 || d != 0) {
            int[][] attendanceList = new int[d][n];
            for (int dinner = 0; dinner < d; dinner++)
                for (int alumni = 0; alumni < n; alumni++)
                    attendanceList[dinner][alumni] = scanner.nextInt();
            if (noAbsence(attendanceList, n, d))
                System.out.println("yes");
            else
                System.out.println("no");
            n = scanner.nextInt();
            d = scanner.nextInt();
        }
        scanner.close();
    }
}
