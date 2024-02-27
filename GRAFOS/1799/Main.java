import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Scanner;

public class Main {

    static HashMap<String, ArrayList<String>> buildMap() {
        HashMap<String, ArrayList<String>> maze = new HashMap<String, ArrayList<String>>();
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        scanner.nextInt();
        int links = scanner.nextInt();
        for (int link = 0; link < links; link++) {
            String a = scanner.next();
            String b = scanner.next();
            if (maze.containsKey(a))
                maze.get(a).add(b);
            else
                maze.put(a, new ArrayList<String>(Arrays.asList(b)));
            if (maze.containsKey(b))
                maze.get(b).add(a);
            else
                maze.put(b, new ArrayList<String>(Arrays.asList(a)));
        }
        scanner.close();
        return maze;
    }

    static int mininumPoints(HashMap<String, ArrayList<String>> maze, String target, ArrayList<String> queue,
            HashSet<String> visited) {
        ArrayList<String> nextQueue = new ArrayList<String>();
        for (String node : queue) {
            if (!visited.contains(node)) {
                visited.add(node);
                if (maze.get(node).contains(target))
                    return 1;
                nextQueue.addAll(maze.get(node));
            }
        }
        return 1 + mininumPoints(maze, target, nextQueue, visited);
    }

    public static void main(String[] args) {
        HashMap<String, ArrayList<String>> maze = buildMap();
        int pointsToCheese = mininumPoints(maze, "*", new ArrayList<String>(Arrays.asList("Entrada")),
                new HashSet<String>());
        int pointsToExit = mininumPoints(maze, "Saida", new ArrayList<String>(Arrays.asList("*")),
                new HashSet<String>());
        System.out.println(pointsToCheese + pointsToExit);
    }
}
