import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] directions = { "N", "L", "S", "O" };
        while (scanner.nextInt() != 0) {
            int direction = 0;
            for (String command : scanner.next().split(""))
                direction = command.equals("D") ? direction + 1 : direction - 1;
            int last = (direction % 4 + 4) % 4;
            System.out.println(directions[last]);
        }
        scanner.close();
    }
}
