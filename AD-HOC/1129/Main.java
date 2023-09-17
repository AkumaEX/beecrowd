import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String[] alternatives = { "A", "B", "C", "D", "E" };
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n != 0) {
            for (int i = 0; i < n; i++) {
                String choice = "";
                for (int j = 0; j < 5; j++) {
                    if (scanner.nextInt() <= 127) {
                        if (choice.isBlank())
                            choice = alternatives[j];
                        else
                            choice = "*";
                    }

                }
                if (choice.isBlank())
                    choice = "*";
                System.out.println(choice);
            }
            n = scanner.nextInt();
        }
        scanner.close();
    }
}