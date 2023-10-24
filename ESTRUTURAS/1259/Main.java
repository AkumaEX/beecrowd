import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        ArrayList<Integer> even = new ArrayList<Integer>();
        ArrayList<Integer> odd = new ArrayList<Integer>();

        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int num = scanner.nextInt();
            if (num % 2 == 0)
                even.add(num);
            else
                odd.add(num);
        }
        scanner.close();

        Collections.sort(even);
        Collections.sort(odd, Collections.reverseOrder());
        for (int num : Stream.concat(even.stream(), odd.stream()).toList())
            System.out.println(num);
    }
}
