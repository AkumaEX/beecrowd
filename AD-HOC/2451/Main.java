import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    static ArrayList<String> getMaze(int n, Scanner scanner) {
        ArrayList<String> maze = new ArrayList<String>();
        while (n-- > 0)
            maze.add(scanner.next());
        return maze;
    }

    static int getMaxFood(int n, ArrayList<String> maze) {
        int maxFood = 0;
        int food = 0;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                char position = maze.get(i).charAt(i % 2 == 0 ? j : n - 1 - j);
                if (position == 'o')
                    food++;
                else if (position == 'A') {
                    if (food > maxFood)
                        maxFood = food;
                    food = 0;
                }
            }
        }
        return food > maxFood ? food : maxFood;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        ArrayList<String> maze = getMaze(n, scanner);
        System.out.println(getMaxFood(n, maze));
        scanner.close();
    }
}
