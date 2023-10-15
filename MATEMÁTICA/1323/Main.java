import java.util.Scanner;

public class Main {

    static int squares(int n, int[] lookup) {
        if (lookup[n] == 0)
            lookup[n] = n * n + squares(n - 1, lookup);
        return lookup[n];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] lookup = new int[101];
        for (int i = 2; i < 101; i++) 
            lookup[i] = 0;
        lookup[1] = 1;
        int n;
        while ((n = scanner.nextInt()) > 0)
            System.out.println(squares(n, lookup));
        scanner.close();
    }
}
