import java.util.Scanner;

public class Main {

    static int minMoves(String s, String t) {
        int moves = 0;
        boolean previousEquals = true;
        for (int i = 0; i < s.length(); i++) {
            boolean nowEquals = s.charAt(i) == t.charAt(i);
            if (previousEquals && !nowEquals)
                moves++;
            previousEquals = nowEquals;
        }
        return moves;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String s = scanner.next();
        String t = scanner.next();
        while (!s.equals("*")) {
            System.out.println(minMoves(s, t));
            s = scanner.next();
            t = scanner.next();
        }
        scanner.close();
    }
}
