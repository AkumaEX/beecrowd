import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static boolean canKeepProject(int[] areas) {
        Arrays.sort(areas);
        return areas[0] * areas[3] == areas[1] * areas[2];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] areas = new int[4];
        for (int i = 0; i < 4; i++)
            areas[i] = scanner.nextInt();
        System.out.println(canKeepProject(areas) ? "S" : "N");
        scanner.close();
    }
}
