import java.util.Scanner;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        while (a != 0 && b != 0) {
            HashSet<Integer> a_set = new HashSet<Integer>();
            HashSet<Integer> b_set = new HashSet<Integer>();
            for (int i = 0; i < a; i++)
                a_set.add(scanner.nextInt());
            for (int i = 0; i < b; i++)
                b_set.add(scanner.nextInt());
            HashSet<Integer> union_set = new HashSet<Integer>(a_set);
            union_set.addAll(b_set);
            int difference = Math.min(union_set.size() - a_set.size(), union_set.size() - b_set.size());
            System.out.println(difference);
            a = scanner.nextInt();
            b = scanner.nextInt();
        }
        scanner.close();
    }
}
