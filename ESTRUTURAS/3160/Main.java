import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static String newList(ArrayList<String> l, ArrayList<String> n, String x) {
        if (l.contains(x)) {
            int i = l.indexOf(x);
            l.addAll(i, n);
            return String.join(" ", l);
        }
        l.addAll(n);
        return String.join(" ", l);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> l = new ArrayList<String>(Arrays.asList(scanner.nextLine().trim().split(" ")));
        ArrayList<String> n = new ArrayList<String>(Arrays.asList(scanner.nextLine().trim().split(" ")));
        String x = scanner.next();
        System.out.println(newList(l, n, x));
        scanner.close();
    }
}