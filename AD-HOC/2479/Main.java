import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int wellBehaved = 0;
        int n = scanner.nextInt();
        String[] names = new String[n];
        for (int i = 0; i < n; i++) {
            if (scanner.next().equals("+"))
                wellBehaved++;
            names[i] = scanner.next();
        }
        Arrays.sort(names);
        for (String name : names)
            System.out.println(name);
        System.out.printf("Se comportaram: %d | Nao se comportaram: %d\n", wellBehaved, n - wellBehaved);
        scanner.close();
    }
}
