import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static String worldChampion() {
        ArrayList<String> teams = new ArrayList<String>(Arrays.asList("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"));
        Scanner scanner = new Scanner(System.in);
        for (int knockout : new int[] { 8, 4, 2, 1 }) {
            _results(teams, knockout, scanner);
        }
        scanner.close();
        return teams.get(0);
    }

    static void _results(ArrayList<String> teams, int knockout, Scanner scanner) {
        for (int teamM = 0, teamN = 1; teamM < knockout; teamM++, teamN++) {
            int m = scanner.nextInt();
            int n = scanner.nextInt();
            teams.remove((m > n) ? teamN : teamM);
        }
    }

    public static void main(String[] args) {
        System.out.println(worldChampion());
    }
}
