import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int diamonds = 0;
            int potential = 0;
            char[] objects = scanner.next().toCharArray();
            for (char object : objects) {
                if (object != '.') {
                    if (object == '<') {
                        potential++;
                    } else if (object == '>' && potential > 0) {
                        potential--;
                        diamonds++;
                    }
                }
            }
            System.out.println(diamonds);
        
        }
        scanner.close();
    }
}
