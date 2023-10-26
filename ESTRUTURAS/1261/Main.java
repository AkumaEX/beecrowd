import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<String, Integer> getHayPoints(int m, Scanner scanner) {
        HashMap<String, Integer> hayPoints = new HashMap<String, Integer>();
        for (int times = 0; times < m; times++) {
            String description = scanner.next();
            int value = scanner.nextInt();
            hayPoints.put(description, value);
        }
        return hayPoints;
    }

    static int getSalary(HashMap<String, Integer> hayPoints, Scanner scanner) {
        int salary = 0;
        String line;
        while (!(line = scanner.nextLine()).contains(".")) {
            for (String description : line.split(" "))
                salary += hayPoints.containsKey(description) ? hayPoints.get(description) : 0;
        }
        return salary;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int m = scanner.nextInt();
        int n = scanner.nextInt();
        HashMap<String, Integer> hayPoints = getHayPoints(m, scanner);
        for (int times = 0; times < n; times++)
            System.out.println(getSalary(hayPoints, scanner));
        scanner.close();
    }
}
