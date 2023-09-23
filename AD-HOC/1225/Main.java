import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            int[] notes = new int[n];
            for (int i = 0; i < n; i++)
                notes[i] = scanner.nextInt();
            int sum = 0;
            for (int i = 0; i < n; i++)
                sum += notes[i];
            if (sum % n > 0)
                System.out.println(-1);
            else {
                int changes = 0;
                int average = sum / n;
                for (int note : notes)
                    if (note > average)
                        changes += note - average;
                System.out.printf("%d\n", changes + 1);
            }
        }
        scanner.close();
    }
}
