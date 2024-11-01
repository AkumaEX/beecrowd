import java.util.HashSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        HashSet<String> students = new HashSet<String>();
        while (n-- > 0)
            students.add(scanner.next());
        System.out.println(students.size());
        scanner.close();
    }
}
