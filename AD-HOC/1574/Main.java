import java.util.Scanner;

public class Main {

    static int getMove(String instruction, int[] lookup) {
        if (instruction.equals("LEFT"))
            return -1;
        if (instruction.equals("RIGHT"))
            return 1;
        int i = Integer.parseInt(instruction.split(" ")[2]) - 1;
        return lookup[i];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int tests = 0; tests < t; tests++) {
            int p = 0;
            int n = scanner.nextInt();
            scanner.nextLine();
            int[] lookup = new int[n];
            for (int instructions = 0; instructions < n; instructions++) {
                String instruction = scanner.nextLine().strip();
                int move = getMove(instruction, lookup);
                p += move;
                lookup[instructions] = move;
            }
            System.out.println(p);
        }
        scanner.close();
    }
}
