import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            Boolean caps = true;
            String[] line = scanner.nextLine().toLowerCase().split("");
            for (int i = 0; i < line.length; i++) {
                if (line[i].equals(" "))
                    continue;
                if (caps)
                    line[i] = line[i].toUpperCase();
                caps = !caps;
            }
            System.out.println(String.join("", line));
        }
        scanner.close();
    }
}